# 🏢 Part 2: Active Directory Domain Services (ADDS)

**Goal:** Install ADDS, configure a Domain Controller, and manage Domain Users/Computers.

## 1. Pre-ADDS Checklist (Crucial)
Before installing Active Directory on the server, ensure these three conditions are met:
1. **Server OS:** Installed and updated.
2. **NTFS Partition:** The `C:\` drive must be NTFS (Default in modern Windows).
3. **Static IP Address:** The server must have a manual IP configured.

## 2. Network Configuration (Lab IPs)
* **Server 1 (Domain Controller):**
  * IP Address: `10.0.0.1`
  * Preferred DNS: `10.0.0.1` (The server acts as its own DNS).
* **PC 1 (Client):**
  * IP Address: `10.0.0.102`
  * Preferred DNS: `10.0.0.1` (Must point to the Domain Controller!).

> 💡 **Troubleshooting Tip:** If `ping` fails between the Server and Client, turn off the **Windows Defender Firewall** (`firewall.cpl`) on both machines to allow ICMP echo requests.

## 3. Installing & Promoting the Domain Controller
1. Open **Server Manager** -> Add Roles and Features.
2. Select **Active Directory Domain Services (ADDS)** and install.
3. Click the yellow warning flag ⚠️ in Server Manager -> **"Promote this server to a domain controller"**.
4. Select **"Add a new forest"** (Since this is the first server).
5. **Root Domain Name:** e.g., `ictacademy.com`.
6. **DSRM Password:** Set a Directory Services Restore Mode password (used for AD backups/recovery).
7. Click Next and Install. The server will restart automatically. 
   * *Note: Login will change from local `Administrator` to Domain Admin (`testserver\Administrator`).*

## 4. Joining the Client PC to the Domain
1. Log into **PC 1** (Windows 10).
2. Open run prompt (`Win + R`) -> `sysdm.cpl`.
3. Click **Change...**
4. Change Member of from "Workgroup" to **Domain** -> type `testserver.com`.
5. Enter the Server's Domain Admin credentials when prompted.
6. Restart the Client PC. 
7. *Verification:* In Server Manager -> Tools -> **Active Directory Users and Computers (`dsa.msc`)**, check the `Computers` container to see `PC-1`.

## 5. Managing AD Objects (OUs, Users & Groups)
* **Organizational Units (OU):** Used to logically group users (e.g., HR, IT, Sales) to apply specific Group Policies later. 
  * *Right-click Domain -> New -> Organizational Unit*.
* **User Restrictions (Logon Hours):**
  * Right-click a User -> Properties -> **Account** tab -> **Logon Hours**.
  * You can highlight specific days/times and click "Logon Denied" (e.g., restrict logins on Sundays).
* **Bulk User Creation:** 
  * Refer to the `Bulk_User_Creation.cmd` script in this folder to see how to instantly create multiple users via Command Prompt.

---

### 🧠 Active Recall Questions (Test Yourself Later)
* *What are the 3 prerequisites for installing Active Directory?*
* *Where does AD store its database, and what are the two main folders created?* (Answer: `C:\Windows\NTDS` and `C:\Windows\SYSVOL`).
* *Why must the Client PC's DNS point exactly to the Domain Controller's IP?*
