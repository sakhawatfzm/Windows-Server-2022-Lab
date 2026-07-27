First need a hard disk to where recover.I decided create another hard disk on same server which is 60gb

<img width="758" height="732" alt="Screenshot 2026-07-27 at 11 29 57 PM" src="https://github.com/user-attachments/assets/612e521f-c29b-4178-b46c-1a3d15c444d2" />

after that check disk in diskmanagement by using command:

<img width="506" height="316" alt="Screenshot 2026-07-27 at 11 30 19 PM" src="https://github.com/user-attachments/assets/84b9c8b9-4fff-43ad-9056-bec0c3ff02e3" />

Yes here it is first when go here hard disk might be offline ,so have to be online then create as partition .Here it is E: drive
<img width="899" height="545" alt="Screenshot 2026-07-27 at 11 31 21 PM" src="https://github.com/user-attachments/assets/4f99cb82-8204-41b3-8f6d-2c58521ed066" />

yes here it is new drive.it's mainly setup for backup testing:

<img width="890" height="395" alt="Screenshot 2026-07-27 at 11 35 06 PM" src="https://github.com/user-attachments/assets/8386583f-db75-4be3-b263-5e67e46ce0ac" />


Now going to install windows server backup feature.Normally in tools we can see that windows server backup but we have to install from manage .. Remember it's feature not roles:


<img width="1066" height="633" alt="Screenshot 2026-07-27 at 11 37 18 PM" src="https://github.com/user-attachments/assets/03b30445-5aae-4515-9d01-4eaf9a9f2ad8" />


after that I created OU and user after backup we deleted these ou then when recover we match the ou .can we recover 

<img width="951" height="483" alt="Screenshot 2026-07-27 at 11 48 35 PM" src="https://github.com/user-attachments/assets/0f6922da-c584-4d80-893c-39f81bc44624" />

now go to windows server backup:

<img width="1071" height="637" alt="Screenshot 2026-07-27 at 11 51 55 PM" src="https://github.com/user-attachments/assets/930e245f-c197-4e3b-9c07-34d0d6643d00" />

then click on backup once:

<img width="1091" height="648" alt="Screenshot 2026-07-27 at 11 53 00 PM" src="https://github.com/user-attachments/assets/768acc35-64f1-454b-99d3-deb4f3a739c3" />


Here two options,I choose custom backup and system state.Because time saving.

<img width="1130" height="600" alt="Screenshot 2026-07-27 at 11 55 12 PM" src="https://github.com/user-attachments/assets/333db3af-be2c-4175-92d7-a081a076e838" />

We can't select same disk which we backup.

<img width="665" height="558" alt="Screenshot 2026-07-28 at 12 00 19 AM" src="https://github.com/user-attachments/assets/57ed9298-0117-4d0e-b5f2-81e6c8b4c4a2" />

so we select which we already created before for testing -> local disk E:

<img width="1062" height="630" alt="Screenshot 2026-07-28 at 12 01 46 AM" src="https://github.com/user-attachments/assets/7b52e9aa-fd2e-45e5-ac4f-8d9e518b5cde" />

after backup file this is shown in E drive:

<img width="1163" height="594" alt="Screenshot 2026-07-28 at 1 19 46 AM" src="https://github.com/user-attachments/assets/7aa1d2eb-d30e-428a-a968-64a6f56f4b08" />

Now trying to recover from windows server backup but it's deny because we currently in normal mode so we have to go DSRM mode:

<img width="1168" height="608" alt="Screenshot 2026-07-28 at 1 18 04 AM" src="https://github.com/user-attachments/assets/6313808b-eeb9-4df2-960b-3ceb808d90ca" />

Now go to system configuration:

<img width="984" height="604" alt="Screenshot 2026-07-28 at 1 22 12 AM" src="https://github.com/user-attachments/assets/a05606d5-3cce-49b0-bbcd-9ce73fa3f84b" />

Then select safe boot and active directory repair:

<img width="598" height="401" alt="Screenshot 2026-07-28 at 1 23 20 AM" src="https://github.com/user-attachments/assets/49beaba4-59bf-454e-bde2-9834b0f83aee" />


after that trying to login domain but it's deny because we are in DSRM mode:

<img width="1177" height="643" alt="Screenshot 2026-07-28 at 1 28 39 AM" src="https://github.com/user-attachments/assets/0e2e8893-3ea2-4a99-9d7f-e2fa37921f3c" />

We have to use DSRM password which we already set when active directory install:

<img width="1186" height="650" alt="Screenshot 2026-07-28 at 1 32 08 AM" src="https://github.com/user-attachments/assets/83b5a845-70f3-4b67-bc40-57b081163d35" />

after that the drive maybe offline so we have to online:

<img width="749" height="564" alt="Screenshot 2026-07-28 at 1 37 08 AM" src="https://github.com/user-attachments/assets/51e1ec31-c347-4094-856f-5689f59a5776" />

Now recover started after we go to DSRM mode:

<img width="1174" height="605" alt="Screenshot 2026-07-28 at 1 39 00 AM" src="https://github.com/user-attachments/assets/ba47e347-d872-43a5-9c22-b222de730ca5" />
















