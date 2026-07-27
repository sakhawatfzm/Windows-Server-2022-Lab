## Visual:

**Network Topology (DFS Namespace and Shared Folder Structure)**

<img width="628" height="357" alt="Screenshot 2026-07-27 at 3 30 08 PM" src="https://github.com/user-attachments/assets/76ef0e5a-ad39-4531-ad14-3e425c084301" />

---

## First PC1 joining to server (Domain Joining)

**PC1 has been successfully joined to the Active Directory domain.**

<img width="963" height="532" alt="Screenshot 2026-07-27 at 4 12 33 PM" src="https://github.com/user-attachments/assets/7369ff06-52f7-4bef-93f8-1961f825903e" />

---

## DFS Management

**Open the DFS Management console from Server Manager to configure the DFS Namespace and shared folders.**

<img width="1020" height="511" alt="Screenshot 2026-07-27 at 4 04 06 PM" src="https://github.com/user-attachments/assets/39c2a815-2b5a-4153-bec4-dee35e67e87d" />

---

## Create users in Active Directory Users and Computers

**Open Active Directory Users and Computers (ADUC), then create a new Organizational Unit (OU) named `dfs`. All required users will be created inside this OU.**

<img width="1070" height="555" alt="Screenshot 2026-07-27 at 4 14 58 PM" src="https://github.com/user-attachments/assets/8f5f3671-2411-4e03-8d64-5fc51e9f02bd" />

---

## Create the DFS Namespace

**Create the DFS Namespace one by one. In this example, the namespace for `CEOUser` is created first. Repeat the same process for the remaining departments according to the network topology shown above.**

<img width="1070" height="555" alt="Screenshot 2026-07-27 at 4 17 46 PM" src="https://github.com/user-attachments/assets/86b73bef-dea8-4a5a-9327-66d0c5c9d2d3" />

---

## Configure the Namespace

**Specify the namespace server and enter the namespace name, then continue with the namespace creation wizard.**

<img width="1141" height="637" alt="Screenshot 2026-07-27 at 4 21 46 PM" src="https://github.com/user-attachments/assets/8b875f57-95ee-44da-af67-4efdaf128353" />

---

## Review and Complete the Namespace Creation

**Review the namespace configuration and click **Create** to complete the DFS Namespace setup.**

<img width="1117" height="619" alt="Screenshot 2026-07-27 at 4 22 19 PM" src="https://github.com/user-attachments/assets/d2633273-30cf-41c4-bb51-8e5812997f86" />

---

## DFS Namespace Created Successfully

**The DFS Namespace has been created successfully and is now ready for adding shared folders (folder targets).**

<img width="956" height="401" alt="Screenshot 2026-07-27 at 4 29 33 PM" src="https://github.com/user-attachments/assets/7d8a6848-aecf-42a6-95a2-65152a97aeae" />

---

## Verify Access to a Restricted Folder

**Log in as `User1` and attempt to access the `CEOData` shared folder. Access is denied as expected because User1 does not have the required permissions to access this folder.**

<img width="1055" height="534" alt="Screenshot 2026-07-27 at 4 35 23 PM" src="https://github.com/user-attachments/assets/c3ccaafd-168d-4393-a9a1-0812ad2d7931" />

---

## Verify Access to the Public Folder

**Log in as `User1` and access the `PublicData` shared folder. Since this folder is configured with permissions for **Everyone**, the user can successfully create, modify, and delete files.**

<img width="950" height="404" alt="Screenshot 2026-07-27 at 4 38 06 PM" src="https://github.com/user-attachments/assets/6d4852f9-d234-4df4-8ae6-0431450c7a04" />
