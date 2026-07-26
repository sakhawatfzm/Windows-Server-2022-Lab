Additional Domain Controller Setup:


<img width="751" height="571" alt="Screenshot 2026-07-25 at 9 42 20 PM" src="https://github.com/user-attachments/assets/90b46268-2834-4056-b34f-6666b19e6635" />


Create an OU in the main server (RootDC), and it is also synchronized on the Additional Server:

<img width="943" height="404" alt="Screenshot 2026-07-25 at 10 50 16 PM" src="https://github.com/user-attachments/assets/d6bdd7f8-7ebd-4c92-aa6d-e5ede8c4d6ef" />


Additional Server (ADC):


<img width="944" height="433" alt="Screenshot 2026-07-25 at 10 52 08 PM" src="https://github.com/user-attachments/assets/ad953451-7ee4-4815-b83a-4a3b9b2bd023" />



ReadOnlyDomain:

<img width="952" height="530" alt="Screenshot 2026-07-25 at 11 34 58 PM" src="https://github.com/user-attachments/assets/495e1a0d-f9bb-42bb-8a13-63bc5fdc13dc" />

<img width="972" height="567" alt="Screenshot 2026-07-25 at 11 38 27 PM" src="https://github.com/user-attachments/assets/57cf2afe-3802-4343-b420-7a1d97d6ae48" />



this is from after ADDS install :
<img width="1002" height="579" alt="Screenshot 2026-07-25 at 11 56 56 PM" src="https://github.com/user-attachments/assets/acbf8c12-df5f-4ee8-ba07-4c8f59679326" />


Read only domain:

<img width="1019" height="645" alt="Screenshot 2026-07-26 at 12 07 17 AM" src="https://github.com/user-attachments/assets/245b3f4f-ba0d-476a-a20e-143e3de74a0b" />


Test user delete in RODC:


<img width="1038" height="652" alt="Screenshot 2026-07-26 at 12 21 46 AM" src="https://github.com/user-attachments/assets/6393a2bd-7533-493b-aa4d-141742cf253c" />

Delegate some tasks to RODC:

<img width="988" height="532" alt="Screenshot 2026-07-26 at 10 56 29 AM" src="https://github.com/user-attachments/assets/de4f0b87-9b0f-47b0-8ba4-d3d73fae9a19" />


<img width="918" height="464" alt="Screenshot 2026-07-26 at 10 58 16 AM" src="https://github.com/user-attachments/assets/be4a379a-dadc-4547-bdc6-cf8154d5166e" />


<img width="918" height="464" alt="Screenshot 2026-07-26 at 10 58 16 AM" src="https://github.com/user-attachments/assets/4251c7b2-957d-4cfe-b35c-1b7b1c078cf5" />


After delegation set now user(rahul) can create user and delete on RODC server:

<img width="1021" height="750" alt="Screenshot 2026-07-26 at 11 01 02 AM" src="https://github.com/user-attachments/assets/2a26e790-b4e0-4045-88ae-a4b1f395ba13" />


Change FSMO role transfer to another server(ADC server) step by step:

<img width="888" height="505" alt="Screenshot 2026-07-26 at 3 43 24 PM" src="https://github.com/user-attachments/assets/ca380cd6-38d9-47be-8a7b-2f3985800824" />

<img width="951" height="507" alt="Screenshot 2026-07-26 at 3 43 34 PM" src="https://github.com/user-attachments/assets/df040b77-5150-4a1f-8a71-deacfc42eef4" />

<img width="920" height="493" alt="Screenshot 2026-07-26 at 3 43 49 PM" src="https://github.com/user-attachments/assets/2961fd5a-8903-4cb2-9ee5-2a608e670acc" />

<img width="936" height="509" alt="Screenshot 2026-07-26 at 3 44 00 PM" src="https://github.com/user-attachments/assets/bb088f4a-1edc-4c8b-86f7-521add05d9fa" />


As we can see that already three roles transfer to  another server(ADC server):

<img width="545" height="349" alt="Screenshot 2026-07-26 at 3 49 13 PM" src="https://github.com/user-attachments/assets/ee6d3ab8-102c-4dc2-a08f-4659fc2314d6" />

Now move others two roles:

Domain Naming Master role transfer to another server(ADC server):

<img width="1023" height="559" alt="Screenshot 2026-07-26 at 3 55 09 PM" src="https://github.com/user-attachments/assets/70035ffc-4d3d-4a55-9503-adf6ce7c2b70" />


<img width="976" height="512" alt="Screenshot 2026-07-26 at 3 55 20 PM" src="https://github.com/user-attachments/assets/fa783dff-fae9-474e-9efe-906388bf755e" />


<img width="966" height="518" alt="Screenshot 2026-07-26 at 3 55 30 PM" src="https://github.com/user-attachments/assets/647a7f5b-20b3-4083-86cd-e8a9fbbd9027" />


<img width="1008" height="550" alt="Screenshot 2026-07-26 at 3 55 49 PM" src="https://github.com/user-attachments/assets/319466c1-7f93-4a0f-92ec-dc0505cf98ec" />


<img width="951" height="512" alt="Screenshot 2026-07-26 at 3 55 58 PM" src="https://github.com/user-attachments/assets/76b36271-2d71-447b-a20f-844c44690222" />

Now check again and as we can see that Domain Naming Master role also transfer to another server(ADC server)

<img width="584" height="148" alt="Screenshot 2026-07-26 at 3 56 32 PM" src="https://github.com/user-attachments/assets/f8e26ccb-0681-4d3a-be74-22dda0e862a2" />



The last role is Schema master. Which is also we transfer to another server(ADC server):


<img width="501" height="293" alt="Screenshot 2026-07-26 at 4 13 43 PM" src="https://github.com/user-attachments/assets/c9342678-61c0-4c66-9a74-074793565629" />


<img width="950" height="395" alt="Screenshot 2026-07-26 at 4 12 12 PM" src="https://github.com/user-attachments/assets/af4fbf98-e25f-40ee-990f-f3acd544dbd6" />


<img width="907" height="350" alt="Screenshot 2026-07-26 at 4 15 45 PM" src="https://github.com/user-attachments/assets/0d99cfce-3e13-494d-ab44-812315954a3e" />

<img width="916" height="470" alt="Screenshot 2026-07-26 at 4 15 54 PM" src="https://github.com/user-attachments/assets/9431a2b4-a0a0-49bf-8b4d-ef065006b26c" />


<img width="887" height="435" alt="Screenshot 2026-07-26 at 4 16 14 PM" src="https://github.com/user-attachments/assets/c97f24f1-6918-463e-8f8f-ece2a4051029" />


<img width="470" height="333" alt="Screenshot 2026-07-26 at 4 16 22 PM" src="https://github.com/user-attachments/assets/046f6a3d-10c1-4984-a81b-b477282d692c" />


Finally we can see that all FSMO roles transfer to another server

So server2(adc server) becomes RootDC after all roles transfer to adc.
<img width="849" height="439" alt="Screenshot 2026-07-26 at 4 17 07 PM" src="https://github.com/user-attachments/assets/2100f2c5-e88f-4462-a4dc-ae55785d15ab" />














