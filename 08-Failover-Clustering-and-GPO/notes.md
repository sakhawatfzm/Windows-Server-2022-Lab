
Failover Clustering: Lab Summary & SOP
Phase 1: Storage Preparation (Main DC Server)
Create the Storage: You can use a single virtual disk or create a Storage Pool using multiple disks to provide raw storage capacity.

Install Roles: Install the iSCSI Target Server role (and the iSCSI Target Storage Provider if needed).

Create iSCSI Target: Create a new iSCSI Virtual Disk (e.g., 100GB out of a 150GB drive) and assign it to a new iSCSI Target.

Authorize Nodes: During target creation, explicitly add the IQNs (or computer names/IPs) of NODE1 and NODE2 so they are authorized to access this shared disk.

Phase 2: Node Network & Domain Prep (NODE1 & NODE2)
Domain Join: Ensure both nodes have their DNS pointing to the Main Server and are successfully joined to the domain.

Heartbeat Network: Add a secondary Network Interface Card (NIC) to both nodes. Assign them static IPs on a completely different subnet (e.g., 172.0.0.1 and 172.0.0.2) without a default gateway or DNS. Test this connection using ping. This is the "Heartbeat" used strictly for the nodes to check if the other is alive.

Log In Securely: Always log into both nodes using the Domain Administrator credentials, not the local admin.

Phase 3: Connect the Storage (NODE1 & NODE2)
iSCSI Initiator: On both nodes, run iscsicpl and type the IP address of the Main DC Server into the Target box. Click Quick Connect to attach to the shared storage.

Disk Initialization (Do on NODE1 Only): Open Disk Management. Bring the new iSCSI disk Online, Initialize it, and format it as a New Simple Volume (NTFS). Because it is shared storage, once formatted on NODE1, NODE2 will automatically see the formatted volume.

Phase 4: Cluster Creation (Node 1 or 2)
Install Feature: Install the Failover Clustering feature on both NODE1 and NODE2 via Server Manager.

Validate Configuration: Open the Failover Cluster Manager on one node. Run the Validate Configuration wizard, add both nodes, and run all tests to ensure the storage, networking, and hardware meet the strict clustering requirements.

Create Cluster: Run the Create Cluster wizard.

Correction here: You will be asked to create an "Access Point for Administering the Cluster." You only provide one new, unused IP address for your main network here. This becomes the "Cluster Virtual IP." The heartbeat network manages itself in the background.

Phase 5: Verification & Failover
Verify Ownership: In the Failover Cluster Manager dashboard, click on Nodes to see that both are UP. Click on Storage > Disks to see which node currently owns the "Quorum Disk" (the active node).

The Failover Process: If the active node crashes, loses power, or goes offline, the heartbeat connection detects the failure. The cluster instantly reassigns ownership of the Quorum disk to the surviving passive node, keeping the applications and data online automatically.
