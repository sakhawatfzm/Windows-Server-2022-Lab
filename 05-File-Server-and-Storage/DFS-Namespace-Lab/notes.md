# 📁 DFS Namespace & Folder Permission Lab

> **Goal:** Configure a DFS Namespace in Active Directory and verify folder access using NTFS and Share permissions.

---

# 🏗️ Lab Architecture

```
Domain Controller
│
├── Active Directory
│     ├── OU: dfs
│     ├── CEOUser
│     ├── HRUser
│     ├── FinanceUser
│     ├── User1
│     └── ...
│
├── DFS Namespace
│     ├── CEOData
│     ├── HRData
│     ├── FinanceData
│     └── PublicData
│
└── Client
      └── PC1 (Domain Joined)
```

---

# 📋 Prerequisites

* Windows Server installed
* Active Directory Domain Services (AD DS)
* DNS configured
* DFS Namespace role installed
* Client PC (PC1)
* Domain Administrator account

---

# Step 1 — Join PC1 to the Domain

* Open **System Properties**
* Join the Active Directory domain
* Restart the computer
* Verify successful domain login

✅ Result:

* PC1 authenticates through the Domain Controller.

---

# Step 2 — Open DFS Management

Navigate to:

```
Server Manager
    → Tools
        → DFS Management
```

This console is used to create and manage:

* DFS Namespaces
* DFS Folder Targets
* DFS Replication (optional)

---

# Step 3 — Create Users in Active Directory

Open:

```
Active Directory Users and Computers
```

Create:

```
OU
└── dfs
```

Inside the OU, create all required users.

Example:

```
dfs
├── CEOUser
├── HRUser
├── FinanceUser
├── User1
└── ...
```

---

# Step 4 — Create the DFS Namespace

DFS Management

```
Namespaces
    → New Namespace
```

Select

* Namespace Server

Enter

* Namespace Name

Finish the wizard.

Repeat for other namespaces if required.

---

# Step 5 — Add Folder Targets

Inside the namespace, create folders such as:

```
CEOData
HRData
FinanceData
PublicData
```

Each namespace folder points to its corresponding shared folder on the server.

---

# Step 6 — Configure Permissions

## CEOData

Allowed:

* CEOUser

Denied:

* Other users

---

## HRData

Allowed:

* HRUser

---

## FinanceData

Allowed:

* FinanceUser

---

## PublicData

Permissions:

```
Everyone
```

Users can:

* Read
* Create
* Modify
* Delete

---

# Step 7 — Test Permissions

## Test 1

Login:

```
User1
```

Try accessing:

```
CEOData
```

Expected Result:

```
Access Denied
```

✅ Permission working correctly.

---

## Test 2

Login:

```
User1
```

Open:

```
PublicData
```

Expected Result:

* Access granted
* Create files ✅
* Edit files ✅
* Delete files ✅

---

# ✅ Verification Checklist

* [✅] PC joined to domain
* [✅] DFS Namespace created
* [✅] OU "dfs" created
* [✅] Users created
* [✅] Shared folders created
* [✅] NTFS permissions configured
* [✅] Share permissions configured
* [✅] CEOData inaccessible to unauthorized users
* [✅] PublicData accessible to everyone

---

# 💡 Key Commands / Navigation

```
Server Manager
    → Tools
        → DFS Management
```

```
Server Manager
    → Tools
        → Active Directory Users and Computers
```

---

# 🧠 Key Takeaways

* DFS Namespace provides a single logical path to shared folders.
* Access control is enforced through **NTFS** and **Share Permissions**.
* Unauthorized users receive **Access Denied**.
* Public shared folders can be configured for **Everyone** based on business requirements.
* Always verify permissions using a standard user account instead of an administrator account.

---

# 📌 Future Reminder

Whenever creating a new departmental folder:

1. Create the shared folder.
2. Configure NTFS permissions.
3. Configure Share permissions.
4. Add it as a DFS Folder Target.
5. Test access with both an authorized and an unauthorized user.
