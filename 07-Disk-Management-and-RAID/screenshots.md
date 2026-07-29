## Topology

**Lab topology used to demonstrate MBR/GPT partitioning, Dynamic Disks, and RAID configurations.**

<img width="960" height="542" alt="Screenshot 2026-07-28 at 11 34 08 AM" src="https://github.com/user-attachments/assets/5edc4f41-b8cb-4286-9626-4049a7617141" />

---

## Add a New Disk and Bring It Online

**Attach a new virtual hard disk to the server, then bring it online using Disk Management before creating partitions.**

<img width="747" height="515" alt="Screenshot 2026-07-28 at 11 22 28 AM" src="https://github.com/user-attachments/assets/bb269cad-3313-41b5-8872-9f0df5188e81" />

---

## Select the Partition Style

**When initializing the disk, choose either **MBR (Master Boot Record)** or **GPT (GUID Partition Table)**. MBR supports up to **4 primary partitions**, whereas GPT supports up to **128 primary partitions**.**

<img width="465" height="378" alt="Screenshot 2026-07-28 at 11 24 34 AM" src="https://github.com/user-attachments/assets/c028b7c0-074b-4e99-882d-e6a53939f06e" />

---

## Create an MBR Partition

**Initialize the disk using the **MBR** partition style before creating volumes.**

<img width="881" height="518" alt="Screenshot 2026-07-29 at 11 51 58 AM" src="https://github.com/user-attachments/assets/f6ef472c-3b30-4ea9-b0fd-295438ec43d1" />

---

## Create a FAT32 Volume

**Create a **FAT32** partition. Unlike NTFS, FAT32 does not provide a **Security** tab because it does not support file and folder permissions.**

<img width="885" height="528" alt="Screenshot 2026-07-29 at 11 53 00 AM" src="https://github.com/user-attachments/assets/9e573a06-401f-4acb-ba34-75689378dc74" />

---

## Compare FAT32, NTFS, and ReFS

**Create partitions using **FAT32**, **NTFS**, and **ReFS (Resilient File System)** to compare their features. NTFS supports security permissions through the **Security** tab, while ReFS is designed for improved data integrity and resilience.**

<img width="928" height="454" alt="Screenshot 2026-07-29 at 12 03 29 PM" src="https://github.com/user-attachments/assets/557bd84c-1acf-44bc-a826-e7f49b76adde" />

---

## Convert the Disk to GPT

**Convert the disk from **MBR** to **GPT**, allowing support for up to **128 primary partitions**.**

<img width="1034" height="606" alt="Screenshot 2026-07-29 at 12 35 51 PM" src="https://github.com/user-attachments/assets/a067ca75-417d-4b15-88f8-62985439159a" />

---

## Convert to a Dynamic Disk

**Convert the basic disk into a **Dynamic Disk** to enable advanced volume types such as Striped, Mirrored, and RAID-5 volumes.**

<img width="493" height="330" alt="Screenshot 2026-07-29 at 12 38 40 PM" src="https://github.com/user-attachments/assets/2cb822b3-4f26-4bc3-ae09-eeb389317dfa" />

<img width="666" height="511" alt="Screenshot 2026-07-29 at 12 56 25 PM" src="https://github.com/user-attachments/assets/fa80b527-9422-4ba6-91c5-1c987a56640f" />

---

## Test a Striped Volume (RAID 0)

**A **Striped Volume (RAID 0)** requires a minimum of **two disks**. Data is distributed across both disks to improve performance.**

<img width="1112" height="593" alt="Screenshot 2026-07-29 at 12 57 26 PM" src="https://github.com/user-attachments/assets/736f07f8-e522-44d1-b8a0-ec72a61bd289" />

---

## RAID 0 Cannot Be Used for Operating System Installation

**A striped volume cannot be used to install the Windows operating system because it is intended for data storage only.**

<img width="998" height="578" alt="Screenshot 2026-07-29 at 1 00 12 PM" src="https://github.com/user-attachments/assets/214dd7a5-d3e5-4958-a67b-ae336a17098f" />

---

## RAID 0 Characteristics

**RAID 0 provides **100% disk utilization** and **no redundancy**. If a single disk fails, all data stored in the striped volume is lost.**

<img width="991" height="582" alt="Screenshot 2026-07-29 at 1 05 11 PM" src="https://github.com/user-attachments/assets/adab558c-d20c-4d8a-9ace-533c674a1776" />

<img width="784" height="585" alt="Screenshot 2026-07-29 at 1 04 45 PM" src="https://github.com/user-attachments/assets/e3e86ebe-25e5-42df-a099-c4fbc387ff9c" />

---

## Simulate a Disk Failure in RAID 0

**Simulate the failure of one disk in the striped volume to observe the effect on data availability.**

<img width="1010" height="586" alt="Screenshot 2026-07-29 at 1 05 53 PM" src="https://github.com/user-attachments/assets/867d4cc5-5009-4601-8df1-ca64246f917e" />

---

## RAID 0 Data Loss

**After one disk fails, the striped volume becomes unavailable and all stored data is lost due to the absence of redundancy.**

<img width="775" height="581" alt="Screenshot 2026-07-29 at 1 06 36 PM" src="https://github.com/user-attachments/assets/42b35b02-27d1-4072-90c1-179abe2e70b9" />

---

## Create a Mirrored Volume (RAID 1)

**Create a **Mirrored Volume (RAID 1)** using two dynamic disks. Data is written identically to both disks.**

<img width="1157" height="643" alt="Screenshot 2026-07-29 at 1 14 44 PM" src="https://github.com/user-attachments/assets/84cc8a7f-9de2-4088-86ac-edbfdc6ce007" />

---

## RAID 1 Characteristics

**RAID 1 provides **50% disk utilization** because data is duplicated on both disks. It also provides **fault tolerance**, allowing one disk to fail without data loss.**

<img width="1020" height="593" alt="Screenshot 2026-07-29 at 1 18 18 PM" src="https://github.com/user-attachments/assets/abd5eca1-9566-4b8c-9e5e-b82d128f0aaf" />

<img width="803" height="610" alt="Screenshot 2026-07-29 at 1 19 21 PM" src="https://github.com/user-attachments/assets/3333175a-8349-4bd6-b727-a8ad17947c5a" />

---

## Verify RAID 1 Fault Tolerance

**Simulate the failure of one disk. The mirrored volume remains accessible because the second disk still contains a complete copy of the data.**

<img width="1015" height="591" alt="Screenshot 2026-07-29 at 1 19 49 PM" src="https://github.com/user-attachments/assets/81585651-845b-4fa1-8919-fd7065836807" />

---

## Create a RAID-5 Volume

**A **RAID-5** volume requires a minimum of **three dynamic disks**. Data and parity information are distributed across all disks to provide fault tolerance and efficient storage utilization.**

<img width="1076" height="599" alt="Screenshot 2026-07-29 at 3 28 33 PM" src="https://github.com/user-attachments/assets/dee54b84-a1d4-4832-b376-e1af1d4c4937" />

---

## RAID-5 Characteristics

**RAID-5 provides approximately **65–67% usable disk capacity** (depending on the number of disks) while maintaining redundancy. It can tolerate the failure of **one disk** without losing data.**

<img width="978" height="568" alt="Screenshot 2026-07-29 at 3 40 53 PM" src="https://github.com/user-attachments/assets/54b6ced4-b231-4200-bc90-e2acc2ed18e6" />

---

## Hot-Swappable Concept

**A **hot-swappable** device can be removed and replaced while the server remains powered on. This feature minimizes downtime and is commonly used with RAID storage systems in enterprise environments.**

<img width="919" height="191" alt="Screenshot 2026-07-29 at 3 48 13 PM" src="https://github.com/user-attachments/assets/e0ff0b44-c5bf-447f-8049-554fdaff89e8" />
