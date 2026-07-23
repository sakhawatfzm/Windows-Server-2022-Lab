
# 🌐 Part 3: DHCP & Windows Deployment Services (WDS)

**Goal:** Automate IP addressing across the network using DHCP and deploy Windows OS to multiple client machines simultaneously over the network using WDS.

## 1. Dynamic Host Configuration Protocol (DHCP)
DHCP eliminates the need to manually assign static IPs to every device on the network. It operates on the **DORA** process:
* **D**iscover: Client broadcasts a request for an IP.
* **O**ffer: DHCP server offers an available IP.
* **R**equest: Client requests the offered IP.
* **A**cknowledge: Server acknowledges and finalizes the lease.

### Key DHCP Lab Configurations:
* **Creating a Scope:** Defined a pool of available IP addresses (e.g., `10.0.0.2` to `10.0.0.254`) for the network.
* **Exclusions:** Blocked out specific IP ranges (e.g., `10.0.0.50` to `10.0.0.100`) to prevent them from being distributed to regular clients.
* **IP Reservation:** Tied a specific IP address (e.g., `10.0.0.50`) to a client machine's physical MAC address. This ensures the client always receives the exact same IP.
* **Backup & Restore:** Manually backed up the DHCP database (default location: `C:\Windows\System32\dhcp`) and successfully restored the scope after simulating a failure.

## 2. Windows Deployment Services (WDS)
WDS is used to install Windows operating systems remotely without needing USBs or DVDs. 

### WDS Prerequisites:
To function correctly, WDS requires three services to be active on the network:
1. **Active Directory (AD DS)**
2. **DNS Server**
3. **DHCP Server** (To assign an IP to the blank machine during boot).

### Key WDS Lab Configurations:
* **Adding Images:** Extracted the necessary image files from the `sources` folder of a Windows ISO:
  * **`boot.wim`**: The lightweight OS that loads the installation environment.
  * **`install.wim`**: The actual Windows Operating System image being deployed.
* **PXE Booting:** Configured a blank Client VM to boot from the network (Preboot Execution Environment). Pressed `F12` during startup to fetch the IP from DHCP and pull the Windows installation files directly from the WDS server.

---

### 🧠 Active Recall Questions
* *What are the four steps of the DORA process?*
* *What is the difference between an excluded IP range and a reserved IP?*
* *Which two `.wim` files are absolutely necessary to successfully configure WDS, and what does each do?*
