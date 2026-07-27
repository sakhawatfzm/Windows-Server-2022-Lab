
# command.cmd

## Access Shared Folder from Client

```cmd
\\10.0.0.2
```

or

```cmd
\\ServerName
```

---

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

## Verify Network Connectivity

```cmd
ping 10.0.0.2
```

or

```cmd
ping ServerName
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

## View Detailed IP Information

```cmd
ipconfig /all
```

---

## Flush DNS Cache

```cmd
ipconfig /flushdns
```

---

## Renew IP Address

```cmd
ipconfig /renew
```

---

## Release IP Address

```cmd
ipconfig /release
```

---

## Check Shared Resources on a Remote Server

```cmd
net view \\10.0.0.2
```

or

```cmd
net view \\ServerName
```

---

## Map a Network Drive

```cmd
net use Z: \\10.0.0.2\ShareName
```

---

## Disconnect a Network Drive

```cmd
net use Z: /delete
```

---

## List Current Network Connections

```cmd
net use
```

---

# Active Directory & DFS (GUI Paths)

### Active Directory Users and Computers

```text
Server Manager
    → Tools
        → Active Directory Users and Computers
```

---

### DFS Management

```text
Server Manager
    → Tools
        → DFS Management
```

---

# FSRM (GUI Paths)

### Install FSRM

```text
Server Manager
    → Add Roles and Features
        → File and Storage Services
            → File Server Resource Manager
```

---

### Open FSRM

```text
Server Manager
    → Tools
        → File Server Resource Manager
```

---

### Create a Quota

```text
Quota Management
    → Quotas
        → Create Quota
```

---

### Create a File Screen

```text
File Screening Management
    → File Screens
        → Create File Screen
```

---

# Useful MMC Consoles

```cmd
dsa.msc
```

Active Directory Users and Computers

```cmd
fsmgmt.msc
```

Shared Folders Management

```cmd
compmgmt.msc
```

Computer Management

```cmd
eventvwr.msc
```

Event Viewer

```cmd
services.msc
```

Services

```cmd
servermanager
```

Server Manager

---

# Useful Keyboard Shortcuts

```text
Win + R
```

Open Run

```text
Win + E
```

Open File Explorer

```text
Win + X
```

Power User Menu

```text
Ctrl + Shift + Esc
```

Open Task Manager
