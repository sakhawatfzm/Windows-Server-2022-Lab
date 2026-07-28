## Create an Additional Hard Disk for Backup Storage

**A separate storage location is required to store backup files. For this lab, a new **60 GB** virtual hard disk is created and attached to the same Windows Server.**

<img width="758" height="732" alt="Screenshot 2026-07-27 at 11 29 57 PM" src="https://github.com/user-attachments/assets/612e521f-c29b-4178-b46c-1a3d15c444d2" />

---

## Verify the New Disk in Disk Management

**Open **Disk Management** (using `diskmgmt.msc`) to verify that the newly attached hard disk is detected by the operating system.**

<img width="506" height="316" alt="Screenshot 2026-07-27 at 11 30 19 PM" src="https://github.com/user-attachments/assets/84b9c8b9-4fff-43ad-9056-bec0c3ff02e3" />

---

## Initialize and Prepare the Disk

**If the new disk is offline, bring it online, initialize it, create a new partition, and assign a drive letter. In this lab, the new partition is assigned as **Drive E:**.**

<img width="899" height="545" alt="Screenshot 2026-07-27 at 11 31 21 PM" src="https://github.com/user-attachments/assets/4f99cb82-8204-41b3-8f6d-2c58521ed066" />

---

## Backup Drive Ready

**The new **E:** drive has been created successfully and will be used as the backup destination throughout this lab.**

<img width="890" height="395" alt="Screenshot 2026-07-27 at 11 35 06 PM" src="https://github.com/user-attachments/assets/8386583f-db75-4be3-b263-5e67e46ce0ac" />

---

## Install Windows Server Backup

**Install the **Windows Server Backup** feature from **Server Manager → Add Roles and Features**. Remember that Windows Server Backup is a **Feature**, not a **Role**.**

<img width="1066" height="633" alt="Screenshot 2026-07-27 at 11 37 18 PM" src="https://github.com/user-attachments/assets/03b30445-5aae-4515-9d01-4eaf9a9f2ad8" />

---

## Create Test Objects in Active Directory

**Before taking the backup, create a test **Organizational Unit (OU)** and a test user. These objects will later be deleted and restored to verify that the recovery process is successful.**

<img width="951" height="483" alt="Screenshot 2026-07-27 at 11 48 35 PM" src="https://github.com/user-attachments/assets/0f6922da-c584-4d80-893c-39f81bc44624" />

---

## Open Windows Server Backup

**Launch **Windows Server Backup** from **Server Manager → Tools**.**

<img width="1071" height="637" alt="Screenshot 2026-07-27 at 11 51 55 PM" src="https://github.com/user-attachments/assets/930e245f-c197-4e3b-9c07-34d0d6643d00" />

---

## Start a One-Time Backup

**Select **Backup Once...** to create a manual backup of the server.**

<img width="1091" height="648" alt="Screenshot 2026-07-27 at 11 53 00 PM" src="https://github.com/user-attachments/assets/768acc35-64f1-454b-99d3-deb4f3a739c3" />

---

## Select Backup Configuration

**Choose **Custom** backup and select **System State**. This option reduces backup time while including Active Directory data required for recovery.**

<img width="1130" height="600" alt="Screenshot 2026-07-27 at 11 55 12 PM" src="https://github.com/user-attachments/assets/333db3af-be2c-4175-92d7-a081a076e838" />

---

## Select the Backup Destination

**Windows Server Backup does not allow storing the backup on the same volume being backed up. Therefore, another disk must be selected.**

<img width="665" height="558" alt="Screenshot 2026-07-28 at 12 00 19 AM" src="https://github.com/user-attachments/assets/57ed9298-0117-4d0e-b5f2-81e6c8b4c4a2" />

---

## Choose Drive E as the Backup Destination

**Select the previously created **E:** drive as the destination for storing the backup files.**

<img width="1062" height="630" alt="Screenshot 2026-07-28 at 12 01 46 AM" src="https://github.com/user-attachments/assets/7b52e9aa-fd2e-45e5-ac4f-8d9e518b5cde" />

---

## Backup Completed Successfully

**After the backup finishes successfully, Windows Server Backup creates the backup files on the **E:** drive.**

<img width="1163" height="594" alt="Screenshot 2026-07-28 at 1 19 46 AM" src="https://github.com/user-attachments/assets/7aa1d2eb-d30e-428a-a968-64a6f56f4b08" />

---

## Recovery Cannot Be Performed in Normal Mode

**Attempting to restore the Active Directory database in normal operating mode is not allowed. The server must be restarted in **Directory Services Restore Mode (DSRM)** before beginning the recovery process.**

<img width="1168" height="608" alt="Screenshot 2026-07-28 at 1 18 04 AM" src="https://github.com/user-attachments/assets/6313808b-eeb9-4df2-960b-3ceb808d90ca" />

---

## Open System Configuration

**Run **System Configuration (`msconfig`)** to configure the server to boot into DSRM.**

<img width="984" height="604" alt="Screenshot 2026-07-28 at 1 22 12 AM" src="https://github.com/user-attachments/assets/a05606d5-3cce-49b0-bbcd-9ce73fa3f84b" />

---

## Enable Active Directory Repair Mode

**Select **Safe boot** and choose **Active Directory repair**. Apply the changes and restart the server.**

<img width="598" height="401" alt="Screenshot 2026-07-28 at 1 23 20 AM" src="https://github.com/user-attachments/assets/49beaba4-59bf-454e-bde2-9834b0f83aee" />

---

## Domain Login Is Unavailable in DSRM

**After restarting into DSRM, domain user accounts cannot be used for login because Active Directory services are offline.**

<img width="1177" height="643" alt="Screenshot 2026-07-28 at 1 28 39 AM" src="https://github.com/user-attachments/assets/0e2e8893-3ea2-4a99-9d7f-e2fa37921f3c" />

---

## Sign In Using the DSRM Administrator Password

**Log in using the **Directory Services Restore Mode (DSRM)** administrator password that was configured during the Active Directory Domain Services installation.**

<img width="1186" height="650" alt="Screenshot 2026-07-28 at 1 32 08 AM" src="https://github.com/user-attachments/assets/83b5a845-70f3-4b67-bc40-57b081163d35" />

---

## Bring the Backup Disk Online

**If the backup disk appears offline after booting into DSRM, bring it online before starting the recovery process.**

<img width="749" height="564" alt="Screenshot 2026-07-28 at 1 37 08 AM" src="https://github.com/user-attachments/assets/51e1ec31-c347-4094-856f-5689f59a5776" />

---

## Restore the System State Backup

**Start the recovery process from Windows Server Backup. The System State backup is restored while the server is running in DSRM.**

<img width="1174" height="605" alt="Screenshot 2026-07-28 at 1 39 00 AM" src="https://github.com/user-attachments/assets/ba47e347-d872-43a5-9c22-b222de730ca5" />

---

## Return to Normal Boot Mode

**After the recovery is completed, open **System Configuration (`msconfig`)**, disable **Safe boot**, and restart the server to return to normal operating mode.**

<img width="734" height="429" alt="Screenshot 2026-07-28 at 10 01 12 AM" src="https://github.com/user-attachments/assets/679ce8fe-ea60-4a58-8558-e55908e6c079" />

---

## Verify the Restored Active Directory Objects

**After logging in normally, verify that the previously deleted **OU** and **test user** have been restored successfully from the backup, confirming that the Active Directory recovery was successful.**

<img width="752" height="362" alt="Screenshot 2026-07-28 at 10 09 51 AM" src="https://github.com/user-attachments/assets/95d8bf03-6c38-4046-bd39-b18224b83528" />

---

## Lab Completed

**The Windows Server Backup and Active Directory recovery lab has been completed successfully. The deleted Active Directory objects were restored successfully using a System State backup in Directory Services Restore Mode (DSRM).**
