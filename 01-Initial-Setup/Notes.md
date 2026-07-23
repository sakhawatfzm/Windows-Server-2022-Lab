# 🖥️ Part 1: Initial Setup & Virtual Machines

**Goal:** Prepare the baseline virtual lab environment for the Windows Server deployment.

## 1. Prerequisites & ISOs
* **Hypervisor:** VMware Workstation Pro.
* **ISOs Required:** Windows Server 2022 (Data Center Evaluation) & Windows 10 (Client).
* **Hardware Allocation:**
  * **Server 1 (Root DC):** 4GB RAM, 60GB Storage.
  * **Server 2 (Future ADC):** 4GB RAM, 60GB Storage.
  * **PC 1 (Client):** 2GB RAM, 60GB Storage.

## 2. Base Configuration Steps
* **Network Adapter:** Set all VMs to **Bridged** or **Custom NAT** so they remain in the same broadcast domain and can communicate seamlessly.
* **Post-Install Action:** Install **VMware Tools** on all machines immediately after the OS installation for full-screen resolution and smooth integration.
* **Rename PCs:** Change the hostnames to identify them easily before joining them to any domains (e.g., `Server-1`, `Server-2`, `PC-1`).
  * > **Shortcut:** Press `Win + R` $\rightarrow$ type `sysdm.cpl` to quickly access the System Properties prompt to rename the computer.
