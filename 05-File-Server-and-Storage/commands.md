
# Windows Server Lab Commands

This file contains all commands, MMC consoles, network paths, and GUI navigation used in the **DFS Namespace** and **File Server Resource Manager (FSRM)** labs.

---

# Basic Commands

## Open Run Dialog

```text
Win + R
```

---

## Open Command Prompt

```cmd
cmd
```

---

## Check Current User

```cmd
whoami
```

---

## View IP Configuration

```cmd
ipconfig
```

---

## View Detailed IP Configuration

```cmd
ipconfig /all
```

---

## Verify Network Connectivity

```cmd
ping 10.0.0.2
```

or

```cmd
ping ServerName
```

---

## Flush DNS Cache

```cmd
ipconfig /flushdns
```

---

## Release IP Address

```cmd
ipconfig /release
```

---

## Renew IP Address

```cmd
ipconfig /renew
```

---

# Network Share Commands

## Access Server Shared Folder

```cmd
\\10.0.0.2
```

or

```cmd
\\ServerName
```

---

## View Available Shared Folders

```cmd
net view \\10.0.0.2
```

---

## View Shared Folders by Server Name

```cmd
net view \\ServerName
```

---

## Map a Network Drive

```cmd
net use Z: \\10.0.0.2\ShareName
```

Examples

```cmd
net use Z: \\10.0.0.2\PublicData
```

```cmd
net use Z: \\10.0.0.2\CEOData
```

```cmd
net use Z: \\10.0.0.2\QuotaData
```

```cmd
net use Z: \\10.0.0.2\ScreeningData
```

---

## Remove a Mapped Network Drive

```cmd
net use Z: /delete
```

---

## View Existing Network Connections

```cmd
net use
```

---

# Microsoft Management Console (MMC)

## Active Directory Users and Computers

```cmd
dsa.msc
```

---

## Shared Folders Management

```cmd
fsmgmt.msc
```

---

## Computer Management

```cmd
compmgmt.msc
```

---

## Event Viewer

```cmd
eventvwr.msc
```

---

## Services

```cmd
services.msc
```

---

## Server Manager

```cmd
servermanager
```

---

# DFS Lab

## Open DFS Management

```text
Server Manager
    └── Tools
            └── DFS Management
```

---

## Create a Namespace

```text
DFS Management
    └── Namespaces
            └── New Namespace
```

---

## Create Namespace Folder

```text
DFS Management
    └── Namespace
            └── New Folder
```

---

## Active Directory Users and Computers

```text
Server Manager
    └── Tools
            └── Active Directory Users and Computers
```

---

# FSRM Lab

## Install File Server Resource Manager

```text
Server Manager
    └── Add Roles and Features
            └── File and Storage Services
                    └── File Server Resource Manager
```

---

## Open File Server Resource Manager

```text
Server Manager
    └── Tools
            └── File Server Resource Manager
```

---

## Create a Quota

```text
Quota Management
    └── Quotas
            └── Create Quota
```

---

## Edit Existing Quota

```text
Quota Management
    └── Quotas
            └── Edit Quota Properties
```

---

## Create a File Screen

```text
File Screening Management
    └── File Screens
            └── Create File Screen
```

---

## Edit a File Screen

```text
File Screening Management
    └── File Screens
            └── Edit File Screen Properties
```

---

# Keyboard Shortcuts

## Open Run

```text
Win + R
```

---

## Open File Explorer

```text
Win + E
```

---

## Open Power User Menu

```text
Win + X
```

---

## Open Task Manager

```text
Ctrl + Shift + Esc
```

---

# Quick Revision

| Purpose | Command |
|----------|---------|
| Open Run | `Win + R` |
| Open CMD | `cmd` |
| Check User | `whoami` |
| View IP | `ipconfig` |
| Detailed IP | `ipconfig /all` |
| Ping Server | `ping 10.0.0.2` |
| Access Server | `\\10.0.0.2` |
| View Shares | `net view \\10.0.0.2` |
| Map Drive | `net use Z: \\10.0.0.2\ShareName` |
| Remove Drive | `net use Z: /delete` |
| Active Directory | `dsa.msc` |
| Shared Folders | `fsmgmt.msc` |
| Computer Management | `compmgmt.msc` |
| Event Viewer | `eventvwr.msc` |
| Services | `services.msc` |
| Server Manager | `servermanager` |
| DFS Console | Server Manager → Tools → DFS Management |
| FSRM Console | Server Manager → Tools → File Server Resource Manager |
