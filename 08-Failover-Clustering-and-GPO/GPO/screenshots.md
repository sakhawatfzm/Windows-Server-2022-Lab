## Join the Client PC to the Domain

**Configure the client PC with the IP address **10.0.0.2** and set the DNS server to **10.0.0.1** (the Domain Controller). Then, join the client PC to the Active Directory domain.**

<img width="797" height="624" alt="Screenshot 2026-07-30 at 4 28 42 PM" src="https://github.com/user-attachments/assets/21c266a1-fa26-4845-94e1-aab3be1bbaac" />

---

## Create Organizational Units (OUs) and Users

**On the Domain Controller, create the required **Organizational Units (OUs)** and create domain users. Place each user into the appropriate OU according to the organizational structure.**

<img width="1141" height="626" alt="Screenshot 2026-07-30 at 4 36 42 PM" src="https://github.com/user-attachments/assets/358ee6f0-5670-49a1-a10c-0abd74dd94ea" />

---

## Open Group Policy Management

**Press **Windows + R**, type `gpmc.msc`, and press **Enter** to open the **Group Policy Management Console (GPMC)**.**

<img width="633" height="315" alt="Screenshot 2026-07-30 at 4 45 35 PM" src="https://github.com/user-attachments/assets/6ff96ada-45b5-4d9f-b3bb-c0745a1f5c77" />

---

## Access the Domain in GPMC

**Expand the forest and domain to manage Group Policy Objects (GPOs) for the Active Directory environment.**

<img width="1140" height="619" alt="Screenshot 2026-07-30 at 4 45 21 PM" src="https://github.com/user-attachments/assets/c384a8c7-a9e2-4d9c-94b6-a58b503e9c81" />

---

## Create and Link a New Group Policy Object (GPO)

**Create a new **Group Policy Object (GPO)** and link it to the appropriate domain or Organizational Unit (OU) where the policy should be applied.**

<img width="1078" height="557" alt="Screenshot 2026-07-30 at 4 47 03 PM" src="https://github.com/user-attachments/assets/fb8e25fe-f232-4359-a86f-e93f3948b06e" />

---

## Verify the GPO Link

**Confirm that the newly created Group Policy Object has been linked successfully to the selected domain or OU.**

<img width="932" height="538" alt="Screenshot 2026-07-30 at 4 48 07 PM" src="https://github.com/user-attachments/assets/b464a687-d691-4dc3-ace2-fef5f180dba8" />

---

## Edit the Group Policy Object

**Right-click the Group Policy Object and select **Edit** to configure the required policy settings.**

<img width="1123" height="614" alt="Screenshot 2026-07-30 at 6 10 32 PM" src="https://github.com/user-attachments/assets/d12a6e7b-b7b8-4967-9f4a-ac4e7b392295" />

---

## Configure User Restrictions

**Enable the required user policies. In this lab, the **Recycle Bin** and **Run** menu are hidden to restrict user access.**

<img width="1124" height="605" alt="Screenshot 2026-07-30 at 6 12 09 PM" src="https://github.com/user-attachments/assets/636b9e3b-1a9a-43e4-89a5-c7a7255577ca" />

---

## Verify the Applied Group Policy

**Log in as **User1** and verify that the configured Group Policy is applied successfully. The **Recycle Bin** and **Run** option are no longer visible, confirming that the policy is working as expected.**

<img width="1149" height="642" alt="Screenshot 2026-07-30 at 6 23 23 PM" src="https://github.com/user-attachments/assets/00371036-ea4a-458d-94de-b51c835f5039" />

<img width="1149" height="637" alt="Screenshot 2026-07-30 at 6 24 23 PM" src="https://github.com/user-attachments/assets/2fee8338-e105-486e-9f1f-6dc19410cac6" />

---

## Test the Policy Using User1

**Sign in as **User1** on the client PC to confirm that the Group Policy has been applied successfully to the target user account.**

<img width="825" height="726" alt="Screenshot 2026-07-30 at 6 18 47 PM" src="https://github.com/user-attachments/assets/57e3d390-79c2-472b-9969-2a1012da233d" />

<img width="794" height="626" alt="Screenshot 2026-07-30 at 6 19 05 PM" src="https://github.com/user-attachments/assets/774816f5-7fd0-4709-851d-3f55c3428a92" />

---

## Lab Completed

**The Group Policy Management lab has been completed successfully. This lab demonstrated how to create and link a Group Policy Object (GPO), configure user restrictions, and verify that the policy is applied correctly to domain users through Active Directory.**
