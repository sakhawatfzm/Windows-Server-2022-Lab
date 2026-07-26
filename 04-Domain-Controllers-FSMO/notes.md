Tasks:

# 🏗️ Active Directory Infrastructure Lab

## Additional Domain Controller (ADC), Read-Only Domain Controller (RODC) & FSMO Role Transfer

> **Lab Goal**
>
> Build a resilient Active Directory environment by:
>
> * Deploying an **Additional Domain Controller (ADC)**
> * Deploying a **Read-Only Domain Controller (RODC)**
> * Verifying Active Directory replication
> * Delegating administrative permissions
> * Transferring all five FSMO roles to another Domain Controller

---

# 📚 Lab Topology

| Server     | Role                         |
| ---------- | ---------------------------- |
| **RootDC** | Primary Domain Controller    |
| **ADC**    | Additional Domain Controller |
| **RODC**   | Read-Only Domain Controller  |

---

# Part 1 — Deploy Additional Domain Controller (ADC)

## Objective

Create a second writable Domain Controller to provide:

* High Availability
* Replication
* Redundancy
* Fault Tolerance

---

## Steps

### 1. Install AD DS Role

Install:

* Active Directory Domain Services

After installation:

> Promote this server to a **Domain Controller**

Choose:

> **Add a domain controller to an existing domain**

Provide:

* Domain credentials
* DSRM password

Complete the installation and reboot.

---

## Verification

Open:

```
Active Directory Users and Computers
```

Both Domain Controllers should now appear.

---

# Part 2 — Verify Active Directory Replication

## Objective

Ensure both Domain Controllers synchronize automatically.

---

### Test

On **RootDC**

Create a new Organizational Unit.

Example:

```
IT
```

Wait a few moments.

Open **ADC**

Navigate to:

```
Active Directory Users and Computers
```

The same OU should automatically appear.

---

## Expected Result

✅ OU created on RootDC

↓

Automatic replication

↓

OU appears on ADC

---

## What this proves

* AD Replication is working
* SYSVOL replication is functioning
* Both DCs share the same directory database

---

# 🧠 Active Recall

**Question**

What is the easiest way to verify Active Directory replication?

**Answer**

Create an OU (or user) on one Domain Controller and verify it automatically appears on the other.

---

# Part 3 — Deploy Read-Only Domain Controller (RODC)

## Objective

Install an RODC for branch office scenarios where physical security cannot be guaranteed.

Unlike writable Domain Controllers, an RODC:

* maintains a read-only copy of AD
* cannot directly modify Active Directory
* improves security for remote sites

---

## Installation

Install:

```
Active Directory Domain Services
```

Promote the server.

Select:

```
Add a Domain Controller
```

Enable:

```
Read Only Domain Controller (RODC)
```

Complete the wizard and reboot.

---

## Verification

Open:

```
Active Directory Users and Computers
```

The RODC should now appear under Domain Controllers.

---

# Part 4 — Test RODC Behaviour

## Objective

Verify that an RODC cannot perform write operations.

---

### Test

Attempt to delete a test user.

Expected Result:

```
Access Denied
```

or

```
Operation not permitted
```

---

## Why?

Because an RODC only stores a **read-only** copy of Active Directory.

All write requests must be forwarded to a writable Domain Controller.

---

## What an RODC CAN do

✅ Authenticate users

✅ Replicate AD

✅ Cache passwords (if permitted)

✅ Provide logon services

---

## What an RODC CANNOT do

❌ Create users

❌ Delete users

❌ Modify AD objects

❌ Update Group Policy

---

# 🧠 Active Recall

**Question**

Why can't an RODC delete a user?

**Answer**

Because its Active Directory database is read-only.

---

# Part 5 — Delegate Administrative Tasks

## Objective

Allow a non-Domain Admin account to manage specific objects without granting full administrative privileges.

---

## Scenario

Delegate permissions to user:

```
rahul
```

Grant permissions to:

* Create users
* Delete users
* Manage specific objects

using:

```
Delegate Control Wizard
```

---

## Steps

1. Right-click the desired OU.
2. Select **Delegate Control**.
3. Add user **rahul**.
4. Choose the required tasks.
5. Finish the wizard.

---

## Verification

Log in as **rahul**.

Attempt to:

* Create a user
* Delete a user

Expected Result:

Both operations succeed within the delegated scope.

---

## Why Delegate Instead of Using Domain Admin?

Following the **Principle of Least Privilege**:

Users receive only the permissions required to perform their tasks.

This reduces security risks.

---

# 🧠 Active Recall

**Question**

Why is delegation preferred over making someone a Domain Admin?

**Answer**

It grants only the required permissions while minimizing security exposure.

---

# Part 6 — Transfer FSMO Roles

## Objective

Move all FSMO roles from **RootDC** to **ADC**.

---

# What are FSMO Roles?

Active Directory contains five Flexible Single Master Operations (FSMO) roles.

| Role                  | Scope  |
| --------------------- | ------ |
| Schema Master         | Forest |
| Domain Naming Master  | Forest |
| RID Master            | Domain |
| PDC Emulator          | Domain |
| Infrastructure Master | Domain |

---

# Transfer RID Master

Open:

```
Active Directory Users and Computers
```

Navigate to:

```
Operations Masters
```

Transfer:

* RID Master

---

# Transfer PDC Emulator

From the same console:

Transfer:

* PDC Emulator

---

# Transfer Infrastructure Master

Again:

Transfer:

* Infrastructure Master

---

## Verification

After transferring these three roles:

The **ADC** should own:

* RID
* PDC
* Infrastructure

---

# Transfer Domain Naming Master

Open:

```
Active Directory Domains and Trusts
```

Right-click:

```
Active Directory Domains and Trusts
```

Select:

```
Operations Master
```

Transfer:

```
Domain Naming Master
```

Verify the new owner is **ADC**.

---

# Transfer Schema Master

Before transferring:

Register the Schema snap-in:

```cmd
regsvr32 schmmgmt.dll
```

Open:

```
MMC
```

Add:

```
Active Directory Schema
```

Open:

```
Operations Master
```

Transfer:

```
Schema Master
```

---

# Final Verification

Run:

```cmd
netdom query fsmo
```

Expected Output:

```
Schema Master → ADC

Domain Naming Master → ADC

RID Master → ADC

PDC Emulator → ADC

Infrastructure Master → ADC
```

All five roles should now reside on the **Additional Domain Controller**.

---

# 🧠 Active Recall

## Q1

How many FSMO roles exist?

**Answer**

Five.

---

## Q2

Which two FSMO roles are Forest-wide?

**Answer**

* Schema Master
* Domain Naming Master

---

## Q3

Which three FSMO roles are Domain-wide?

**Answer**

* RID Master
* PDC Emulator
* Infrastructure Master

---

## Q4

Which command verifies FSMO ownership?

```cmd
netdom query fsmo
```

---

## Q5

Which console transfers the Domain Naming Master role?

**Answer**

Active Directory Domains and Trusts.

---

## Q6

Which console transfers the Schema Master role?

**Answer**

MMC → Active Directory Schema snap-in.

---

# 💡 Key Takeaways

* ✔ Deploying an **Additional Domain Controller** provides redundancy, replication, and high availability.
* ✔ Active Directory replication can be quickly verified by creating an OU or user and confirming it appears on another writable DC.
* ✔ An **RODC** maintains a read-only copy of Active Directory, making it suitable for branch offices where physical security is limited.
* ✔ Delegation follows the **Principle of Least Privilege**, allowing specific administrative tasks without granting Domain Admin rights.
* ✔ FSMO roles can be transferred safely to another writable Domain Controller to support maintenance, upgrades, or disaster recovery.
* ✔ Always verify FSMO ownership after migration using:

  ```cmd
  netdom query fsmo
  ```

---

# 📝 Final Lab Checklist

* [x] Additional Domain Controller installed
* [x] AD replication verified
* [x] OU replication confirmed
* [x] Read-Only Domain Controller deployed
* [x] RODC write restrictions tested
* [x] Administrative delegation configured
* [x] Delegated user tested successfully
* [x] RID Master transferred
* [x] PDC Emulator transferred
* [x] Infrastructure Master transferred
* [x] Domain Naming Master transferred
* [x] Schema Master transferred
* [x] All FSMO roles verified on ADC

