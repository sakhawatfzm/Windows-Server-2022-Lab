
# 📚 Windows Server Storage Management Notes

> **Topics Covered**
>
> * MBR vs GPT
> * File Systems (FAT32, NTFS, ReFS)
> * Basic Disk vs Dynamic Disk
> * RAID 0 (Striped)
> * RAID 1 (Mirrored)
> * RAID 5
> * Hot Swapping

---

# MBR vs GPT

| MBR (Master Boot Record)                | GPT (GUID Partition Table)                |
| --------------------------------------- | ----------------------------------------- |
| Supports up to **4 Primary Partitions** | Supports up to **128 Primary Partitions** |
| Older partition style                   | Modern partition style                    |
| Limited disk size support               | Supports very large disks                 |
| Less fault tolerant                     | Stores multiple partition table copies    |

### Remember

> **MBR = 4 Partitions**
>
> **GPT = 128 Partitions**

---

## 🎯 Active Recall

**Q:** How many primary partitions can MBR create?

➡️ **Answer:** 4

---

**Q:** Which partition style supports 128 partitions?

➡️ **Answer:** GPT

---

# File Systems

## FAT32

### Features

* Very old file system
* Compatible with most operating systems
* No Security tab
* Does not support NTFS permissions
* Less secure

### Limitation

❌ Cannot apply file/folder permissions.

---

## NTFS (New Technology File System)

### Features

* Default Windows file system
* Supports Security permissions
* Supports Compression
* Supports Encryption (EFS)
* Supports Disk Quotas
* Supports Large Files

### Why NTFS?

Because Windows security depends on NTFS permissions.

---

## ReFS (Resilient File System)

### Features

* Designed for data integrity
* Better corruption resistance
* Used mainly in Windows Server
* Supports very large storage

### Best Use Case

Large storage servers and virtualization environments.

---

## 🎯 Active Recall

**Q:** Which file system provides the Security tab?

➡️ NTFS

---

**Q:** Which file system is designed for resilience against corruption?

➡️ ReFS

---

**Q:** Which file system has no Security tab?

➡️ FAT32

---

# Basic Disk

Basic disks support standard partitions.

Supports:

* Primary Partition
* Extended Partition
* Logical Drives

Suitable for normal desktop usage.

---

# Dynamic Disk

Dynamic disks support advanced storage volumes.

Supports:

* Simple Volume
* Spanned Volume
* Striped Volume (RAID 0)
* Mirrored Volume (RAID 1)
* RAID 5 Volume

Mostly used on Windows Server.

---

## 🎯 Active Recall

**Q:** Which disk type is required for RAID volumes in Windows Server?

➡️ Dynamic Disk

---

# RAID Overview

RAID = **Redundant Array of Independent Disks**

Purpose:

* Improve performance
* Increase storage
* Provide redundancy
* Improve availability

---

# RAID 0 (Striped Volume)

Minimum Disks:

✅ 2

### Characteristics

* Data is split across multiple disks
* Highest performance
* 100% disk utilization
* No redundancy

If **one disk fails**, all data is lost.

### Advantages

* Fast read/write
* Full storage capacity

### Disadvantages

* No fault tolerance
* Highest risk of data loss

---

## Quick Facts

Minimum Disks → **2**

Disk Utilization → **100%**

Redundancy → ❌ No

Fault Tolerance → ❌ No

Performance → ⭐⭐⭐⭐⭐

---

## 🎯 Active Recall

**Q:** Which RAID provides the best performance?

➡️ RAID 0

---

**Q:** What happens if one RAID 0 disk fails?

➡️ All data is lost.

---

# RAID 1 (Mirrored Volume)

Minimum Disks:

✅ 2

### Characteristics

Every piece of data is written to two disks.

Disk 1

↓

Disk 2 (Exact Copy)

### Advantages

* High availability
* Fault tolerant
* Easy recovery

### Disadvantages

* Only 50% usable storage

---

## Quick Facts

Minimum Disks → **2**

Disk Utilization → **50%**

Redundancy → ✅ Yes

Fault Tolerance → ✅ Yes

Performance → ⭐⭐⭐⭐☆

---

## 🎯 Active Recall

**Q:** Which RAID creates an exact copy of data?

➡️ RAID 1

---

**Q:** If one disk fails in RAID 1, what happens?

➡️ Data is still available from the second disk.

---

# RAID 5

Minimum Disks:

✅ 3

### Characteristics

Uses:

* Striping
* Distributed Parity

Parity allows one failed disk to be rebuilt.

### Advantages

* Good performance
* Redundancy
* Better storage efficiency than RAID 1

### Disadvantages

* Slower writes than RAID 0
* Requires at least three disks

---

## Quick Facts

Minimum Disks → **3**

Disk Utilization → Approximately **65–67%**

Redundancy → ✅ Yes

Fault Tolerance → Can survive **one disk failure**

Performance → ⭐⭐⭐⭐☆

---

## 🎯 Active Recall

**Q:** Minimum disks required for RAID 5?

➡️ 3

---

**Q:** How many disk failures can RAID 5 tolerate?

➡️ One

---

# Hot Swapping

Hot Swapping means replacing hardware **without shutting down the server**.

Commonly used for:

* Enterprise Servers
* RAID Arrays
* Storage Controllers

### Benefits

* Minimal downtime
* Easy disk replacement
* Business continuity

---

## 🎯 Active Recall

**Q:** What is Hot Swapping?

➡️ Replacing hardware while the server remains powered on.

---

# Exam Cheat Sheet

| Technology | Minimum Disks | Utilization | Redundancy | Survives Disk Failure |
| ---------- | ------------: | ----------: | :--------: | :-------------------: |
| RAID 0     |             2 |        100% |      ❌     |           ❌           |
| RAID 1     |             2 |         50% |      ✅     |       ✅ One Disk      |
| RAID 5     |             3 |     ~65–67% |      ✅     |       ✅ One Disk      |

---

# One-Minute Revision

### MBR

* 4 Primary Partitions

### GPT

* 128 Primary Partitions

### FAT32

* No Security tab

### NTFS

* Security permissions

### ReFS

* Resilient File System

### Basic Disk

* Standard partitions

### Dynamic Disk

* RAID support

### RAID 0

* Fastest
* No redundancy
* 100% utilization

### RAID 1

* Mirroring
* 50% utilization
* One disk can fail

### RAID 5

* Minimum 3 disks
* Distributed parity
* One disk can fail

### Hot Swapping

* Replace hardware without powering off the server.
