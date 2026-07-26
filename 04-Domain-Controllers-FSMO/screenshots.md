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


Change FSMO role another server(ADC server) step by step:

<img width="888" height="505" alt="Screenshot 2026-07-26 at 3 43 24 PM" src="https://github.com/user-attachments/assets/ca380cd6-38d9-47be-8a7b-2f3985800824" />

<img width="951" height="507" alt="Screenshot 2026-07-26 at 3 43 34 PM" src="https://github.com/user-attachments/assets/df040b77-5150-4a1f-8a71-deacfc42eef4" />

<img width="920" height="493" alt="Screenshot 2026-07-26 at 3 43 49 PM" src="https://github.com/user-attachments/assets/2961fd5a-8903-4cb2-9ee5-2a608e670acc" />

<img width="936" height="509" alt="Screenshot 2026-07-26 at 3 44 00 PM" src="https://github.com/user-attachments/assets/bb088f4a-1edc-4c8b-86f7-521add05d9fa" />





