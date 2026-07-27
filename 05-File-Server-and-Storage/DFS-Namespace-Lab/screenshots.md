Sure. Here's the same sequence with each **GitHub screenshot URL** kept directly under its caption so you can easily match them when editing your report.

---

## Visual:

**Network Topology (DFS Namespace and Shared Folder Structure)**

```
https://github.com/user-attachments/assets/76ef0e5a-ad39-4531-ad14-3e425c084301
```

---

## First PC1 joining to server (Domain joining)

**PC1 successfully joined to the Active Directory domain.**

```
https://github.com/user-attachments/assets/7369ff06-52f7-4bef-93f8-1961f825903e
```

---

## DFS Management:

**Open the DFS Management console from Server Manager to configure the DFS Namespace and shared folders.**

```
https://github.com/user-attachments/assets/39c2a815-2b5a-4153-bec4-dee35e67e87d
```

---

## Create user on Active Directory Users and Computers. Here create one OU named `dfs`:

**Open Active Directory Users and Computers (ADUC), then create a new Organizational Unit (OU) named `dfs`. All required users will be created inside this OU.**

```
https://github.com/user-attachments/assets/8f5f3671-2411-4e03-8d64-5fc51e9f02bd
```

---

## Now create namespace one by one. Here I create for CEOUser, and the remaining namespaces are created using the same procedure according to the network topology.

**Create the DFS Namespace one by one. In this example, the namespace for `CEOUser` is created first. Repeat the same process for the remaining departments according to the network topology shown above.**

```
https://github.com/user-attachments/assets/86b73bef-dea8-4a5a-9327-66d0c5c9d2d3
```

---

### DFS Namespace Configuration

**Specify the namespace server and enter the namespace name. Then continue to the next step of the namespace creation wizard.**

```
https://github.com/user-attachments/assets/8b875f57-95ee-44da-af67-4efdaf128353
```

---

### Review Namespace Settings

**Review the namespace configuration before completing the wizard, then click *Create* to finish the DFS Namespace setup.**

```
https://github.com/user-attachments/assets/d2633273-30cf-41c4-bb51-8e5812997f86
```

---

### DFS Namespace Created Successfully

**The DFS Namespace has been created successfully and is now ready for adding shared folders (folder targets).**

```
https://github.com/user-attachments/assets/7d8a6848-aecf-42a6-95a2-65152a97aeae
```

---

## Now I login as User1 trying to access CEOData, but it is denied as expected.

**Log in as `User1` and attempt to access the `CEOData` shared folder. Access is denied as expected because User1 does not have the required permissions to access this folder.**

```
https://github.com/user-attachments/assets/c3ccaafd-168d-4393-a9a1-0812ad2d7931
```

---

## But I can access PublicData and also create and delete files because the folder has permission for Everyone.

**User1 can successfully access the `PublicData` shared folder. Since this folder is configured with permissions for **Everyone**, the user can create, modify, and delete files without any restrictions.**

```
https://github.com/user-attachments/assets/6d4852f9-d234-4df4-8ae6-0431450c7a04
```

This way you can simply copy each caption and place it above the corresponding screenshot without worrying about matching the images.
