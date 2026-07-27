## First install the FSRM (File Server Resource Manager)

**Install the File Server Resource Manager (FSRM) role service from Server Manager before configuring storage quotas and file screening policies.**

<img width="776" height="552" alt="Screenshot 2026-07-27 at 9 46 30 AM" src="https://github.com/user-attachments/assets/a6821bf7-cb54-41cc-864e-4ab272ea5d04" />

---

## Verify FSRM Installation

**After the installation is complete, open **Server Manager → Tools** and verify that **File Server Resource Manager (FSRM)** is available.**

<img width="366" height="511" alt="Screenshot 2026-07-27 at 9 48 05 AM" src="https://github.com/user-attachments/assets/61fe3af0-c084-4a7c-90d3-948dfc2bfb02" />

---

## Create Shared Folders

**On the server, create two folders named `QuotaData` and `ScreeningData`. Share both folders and grant appropriate permissions (for testing purposes, full access is assigned) so they can be accessed from client computers.**

<img width="1084" height="632" alt="Screenshot 2026-07-27 at 10 51 19 AM" src="https://github.com/user-attachments/assets/ecf0aac3-c40e-4c98-b339-7a4abf9a11ea" />

---

## Create a Storage Quota

**Open **Quota Management** in FSRM and create a new quota for the `QuotaData` shared folder.**

<img width="1078" height="630" alt="Screenshot 2026-07-27 at 10 46 26 AM" src="https://github.com/user-attachments/assets/e163461d-1b8a-4258-9498-82a10d3c463d" />

---

## Configure the Quota Limit

**Configure the quota settings by selecting the appropriate template or specifying a custom storage limit for the shared folder.**

<img width="1084" height="643" alt="Screenshot 2026-07-27 at 10 48 04 AM" src="https://github.com/user-attachments/assets/604bd2e7-290d-4212-87c3-08c9297c7cb6" />

---

## Apply the Quota

**Review the quota configuration and apply the settings to complete the quota creation process.**

<img width="1076" height="627" alt="Screenshot 2026-07-27 at 10 49 53 AM" src="https://github.com/user-attachments/assets/5dead2d0-56be-4edd-a3b5-02002b9c8fb2" />

---

## Access the Shared Folder from PC1

**On PC1, press `Win + R`, type `\\10.0.0.2`, and press **Enter** to access the shared folders hosted on the server.**

<img width="673" height="400" alt="Screenshot 2026-07-27 at 11 06 06 AM" src="https://github.com/user-attachments/assets/216caa02-a835-4fa3-a170-efd917e35551" />

---

## Open the QuotaData Folder

**The shared folders are displayed successfully. Open the `QuotaData` folder to verify the configured storage quota.**

<img width="925" height="408" alt="Screenshot 2026-07-27 at 11 05 10 AM" src="https://github.com/user-attachments/assets/65868fe5-2900-407f-99a7-28476481f429" />

---

## Verify the Quota Restriction

**Attempt to copy a file larger than **4 MB** into the `QuotaData` folder. The operation is blocked because it exceeds the configured storage quota, which confirms that the quota is functioning correctly.**

<img width="986" height="509" alt="Screenshot 2026-07-27 at 10 52 44 AM" src="https://github.com/user-attachments/assets/d33e396c-f5d8-49cb-992c-2b404749ab8d" />

---

## Increase the Storage Quota

**Modify the existing quota and increase the storage limit from **4 MB** to **10 MB**.**

<img width="890" height="607" alt="Screenshot 2026-07-27 at 11 12 01 AM" src="https://github.com/user-attachments/assets/a5266747-cbec-4fc6-9bf6-b545938a68ac" />

---

## Save the Updated Quota Configuration

**Apply the updated quota settings to increase the maximum storage limit for the shared folder.**

<img width="1048" height="532" alt="Screenshot 2026-07-27 at 11 12 51 AM" src="https://github.com/user-attachments/assets/27624dbf-46b9-4a14-8a6a-571463804e8a" />

---

## Verify the Updated Quota

**After increasing the quota to **10 MB**, copy the **5 MB** file again. This time, the file is transferred successfully because it is within the new quota limit.**

<img width="977" height="464" alt="Screenshot 2026-07-27 at 11 13 29 AM" src="https://github.com/user-attachments/assets/f3a2a600-0ed8-4c28-ad8d-08222af32598" />

---

## File Screening Management

**Next, configure **File Screening Management** to restrict specific file types from being stored in the shared folder.**

<img width="1109" height="541" alt="Screenshot 2026-07-27 at 12 42 22 PM" src="https://github.com/user-attachments/assets/47b588b3-d74f-4edf-aa69-5b1ff978e7ff" />

---

## Create a File Screen

**Create a new file screen for the `ScreeningData` folder and choose an appropriate file group template (for example, image files).**

<img width="1182" height="512" alt="Screenshot 2026-07-27 at 1 51 07 PM" src="https://github.com/user-attachments/assets/ae691341-2006-4918-8dac-b46b1852f63d" />

---

## Apply the File Screen Policy

**Review the file screening settings and apply the policy to block the selected file types.**

<img width="1215" height="714" alt="Screenshot 2026-07-27 at 1 52 14 PM" src="https://github.com/user-attachments/assets/7d47c96e-f45a-4e31-a117-0d178e0cf832" />

---

## Verify the File Screening Restriction

**Attempt to copy a blocked file type (such as an image) into the `ScreeningData` folder. The operation is denied because of the configured file screening policy.**

<img width="964" height="547" alt="Screenshot 2026-07-27 at 2 33 14 PM" src="https://github.com/user-attachments/assets/769bcb7a-18b4-4c77-84e4-cd04d341473e" />

---

## Remove the File Screening Restriction

**Remove or disable the file screening policy from the shared folder to allow the restricted file types again.**

<img width="726" height="630" alt="Screenshot 2026-07-27 at 2 36 21 PM" src="https://github.com/user-attachments/assets/71cc35dd-ac13-4262-a66b-e0d2fa29dc35" />

---

## Verify That the Restriction Has Been Removed

**Copy the same image file into the `ScreeningData` folder again. This time, the transfer succeeds because the file screening restriction has been removed.**

<img width="1026" height="486" alt="Screenshot 2026-07-27 at 2 36 47 PM" src="https://github.com/user-attachments/assets/cc92b4a9-c49b-44f0-801b-ac51ac202824" />
