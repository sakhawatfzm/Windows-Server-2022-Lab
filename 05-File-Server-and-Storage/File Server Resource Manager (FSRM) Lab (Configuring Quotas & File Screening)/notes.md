# 📁 Windows Server – File Server Resource Manager (FSRM)

> **Purpose:** Learn how to use **File Server Resource Manager (FSRM)** to manage storage usage and control the types of files users can store on a Windows File Server.

---

# Overview

**FSRM (File Server Resource Manager)** is a Windows Server feature that helps administrators:

* Manage disk space with **Quotas**
* Restrict file types using **File Screening**
* Generate storage reports
* Apply storage policies to shared folders

---

# Lab Environment

| Component | Value                               |
| --------- | ----------------------------------- |
| Server    | Windows Server                      |
| Client    | PC1 (Domain Joined)                 |
| Server IP | `10.0.0.2`                          |
| Feature   | File Server Resource Manager (FSRM) |

---

# Folder Structure

Two shared folders were created for testing.

```
Server
│
├── QuotaData
│   └── Used for Quota Management
│
└── ScreeningData
    └── Used for File Screening
```

Both folders were shared with full permissions for testing purposes.

---

# Part 1 – Installing FSRM

## Installation

Install **File Server Resource Manager** from:

```
Server Manager
    └── Add Roles and Features
            └── File and Storage Services
                    └── File Server Resource Manager
```

After installation:

```
Server Manager
    └── Tools
            └── File Server Resource Manager
```

---

# Part 2 – Quota Management

## Purpose

Quota Management limits how much storage users can consume inside a folder.

Example:

```
QuotaData
Maximum Size:
4 MB
```

---

## Configuration Steps

1. Open **FSRM**
2. Navigate to **Quota Management**
3. Create a new quota
4. Select the target folder
5. Configure the storage limit
6. Apply the quota

---

## Testing

From **PC1**

```
Win + R

\\10.0.0.2
```

Open:

```
QuotaData
```

### Test Result

Attempt to copy a file larger than **4 MB**.

Result:

```
❌ Copy Failed

Reason:
Quota limit exceeded.
```

---

## Modify the Quota

Increase:

```
4 MB
↓

10 MB
```

Test again using a **5 MB** file.

Result:

```
✅ Copy Successful
```

---

# Key Learning

Quota Management controls **folder storage capacity**, not individual file types.

---

# Part 3 – File Screening Management

## Purpose

File Screening prevents users from storing specific file types.

Example:

```
Images

Executable Files

Audio Files

Video Files
```

depending on the configured file group.

---

## Configuration Steps

1. Open **FSRM**
2. Navigate to **File Screening Management**
3. Create a File Screen
4. Select the target folder
5. Choose a File Group template
6. Apply the policy

---

## Testing

Open:

```
\\10.0.0.2

↓

ScreeningData
```

Attempt to copy a blocked file (e.g., an image).

Result:

```
❌ Access Denied

The selected file type is blocked.
```

---

## Remove the Restriction

Delete or disable the configured File Screen.

Test again.

Result:

```
✅ Image copied successfully.
```

---

# Comparison

| Feature         | Quota Management                  | File Screening                    |
| --------------- | --------------------------------- | --------------------------------- |
| Purpose         | Controls storage usage            | Controls allowed file types       |
| Restricts       | Folder size                       | File extensions                   |
| Example         | 4 MB limit                        | Block `.jpg`, `.png`, `.exe`      |
| User Experience | Copy fails when quota is exceeded | Copy fails for blocked file types |

---

# Commands Used

Access the shared folders:

```text
\\10.0.0.2
```

Open the Run dialog:

```text
Win + R
```

---

# Practical Use Cases

### Quota Management

* Home directories
* Department folders
* Student storage
* Shared drives
* Project folders

---

### File Screening

* Block executable files
* Prevent media uploads
* Restrict ISO files
* Prevent ransomware payloads
* Enforce organisational storage policies

---

# Key Takeaways

* FSRM is used to manage and secure file storage on Windows Server.
* Quotas limit the amount of disk space users can consume.
* File Screening blocks unwanted file types based on configured policies.
* Both features help administrators control storage usage and enforce organisational standards.
* These policies can be tested easily from any client computer by accessing the shared folders through the server's network share.

---

# Quick Revision

```
FSRM
│
├── Quota Management
│     ├── Limit storage size
│     ├── Example: 4 MB
│     └── Prevent oversized uploads
│
└── File Screening
      ├── Block file types
      ├── Example: JPG, PNG, EXE
      └── Prevent unwanted files
```


