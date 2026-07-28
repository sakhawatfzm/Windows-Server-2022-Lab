
# Windows Server Backup & Active Directory Recovery Lab

## Overview

This lab demonstrates how to protect and recover an Active Directory Domain Controller using **Windows Server Backup**. A dedicated backup disk is prepared, a **System State** backup is created, Active Directory objects are deleted for testing, and the server is booted into **Directory Services Restore Mode (DSRM)** to restore the deleted objects successfully.

---

## Objectives

* Configure a dedicated backup storage drive.
* Install the Windows Server Backup feature.
* Create a System State backup.
* Understand why a separate backup destination is required.
* Boot the server into Directory Services Restore Mode (DSRM).
* Restore deleted Active Directory objects from backup.
* Verify that the restored objects are recovered successfully.

---

## Lab Environment

| Component          | Details                                |
| ------------------ | -------------------------------------- |
| Operating System   | Windows Server                         |
| Feature Used       | Windows Server Backup                  |
| Recovery Mode      | Directory Services Restore Mode (DSRM) |
| Backup Type        | System State Backup                    |
| Backup Destination | Local Disk (E:)                        |
| Test Objects       | Active Directory OU and User           |

---

# Part 1: Preparing Backup Storage

A separate **60 GB virtual hard disk** was attached to the Windows Server to store backup files. Using **Disk Management (`diskmgmt.msc`)**, the disk was brought online, initialized, partitioned, and assigned the drive letter **E:**.

> **Note:** Windows Server Backup does not allow storing a backup on the same volume that is being backed up. Therefore, a separate disk is required.

---

# Part 2: Installing Windows Server Backup

The **Windows Server Backup** feature was installed from **Server Manager → Add Roles and Features**.

> **Important:** Windows Server Backup is installed as a **Feature**, not a **Role**.

After installation, the tool became available under **Server Manager → Tools**.

---

# Part 3: Creating a System State Backup

Before creating the backup, a test **Organizational Unit (OU)** and a test user were created in Active Directory.

These objects were intentionally created so they could later be deleted and restored to verify the recovery process.

A **Backup Once** operation was then started with the following configuration:

* Backup Type: **Custom**
* Items Selected: **System State**
* Destination: **Local Disk (E:)**

After the backup completed successfully, Windows Server Backup created the backup files on the E: drive.

---

# Part 4: Preparing for Recovery

The test OU and user were deleted from Active Directory.

When attempting to restore them immediately, Windows Server Backup prevented the recovery because Active Directory cannot be restored while the domain controller is running normally.

To perform the recovery, the server had to be restarted in **Directory Services Restore Mode (DSRM)**.

---

# Part 5: Booting into Directory Services Restore Mode (DSRM)

The server was configured to boot into DSRM using **System Configuration (`msconfig`)**.

The following settings were applied:

* Enable **Safe Boot**
* Select **Active Directory Repair**

After restarting, normal domain authentication was unavailable because Active Directory services were offline.

Instead, the server was accessed using the **DSRM Administrator password** that was configured during the Active Directory Domain Services installation.

If the backup disk appeared offline after booting into DSRM, it was brought online through Disk Management before beginning the recovery.

---

# Part 6: Restoring Active Directory

Once logged into DSRM, Windows Server Backup was used to restore the previously created **System State** backup.

After the recovery process completed successfully, the server was restarted into normal operating mode by disabling **Safe Boot** in System Configuration.

---

# Part 7: Verification

After restarting normally, Active Directory Users and Computers was opened to verify the recovery.

The previously deleted:

* Organizational Unit (OU)
* Test User

were restored successfully, confirming that the System State recovery worked as expected.

---

# Key Learning Points

* Windows Server Backup must be installed as a **Feature**.
* A backup cannot be stored on the same volume being protected.
* **System State Backup** includes Active Directory and other critical system components.
* Active Directory restoration requires **Directory Services Restore Mode (DSRM)**.
* Domain accounts cannot log in while the server is running in DSRM.
* The **DSRM Administrator password** is required to access the server during recovery.
* After recovery, the server must be returned to normal boot mode before verifying the restored objects.

---

# Conclusion

This lab successfully demonstrated the complete backup and recovery process for an Active Directory Domain Controller using **Windows Server Backup**. A dedicated backup drive was prepared, a System State backup was created, Active Directory objects were intentionally deleted, and the deleted objects were successfully restored by booting into **Directory Services Restore Mode (DSRM)**. The lab confirms that Windows Server Backup provides an effective method for protecting and recovering Active Directory in the event of accidental deletion or system failure.
