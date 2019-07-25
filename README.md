# DeeHotKee
## Summary

This is a Autohotkey project. I use it daily to facilitate my work. It helps me with: 
  * Time Logging
  * Task Management
  * Procedures and checklists
  * Notes management
  

### Time Logging 

#### Description

To write time logs, use NotePad++ with 'insert mode' enabled !!!!
Each line is a timelog. The length of caracters must be exact. and each line must end with a return character.

Field    | Description
-------- | --------------------------------------------------
1  | The jira ticket number
2  | Short Ticket description is self explanatory
3  | Description of the time log is what you did during that time
4  | Status of the time log, whether you consider the time log to be worth logging in Jira or if it's a break... or whatever yo uwish

The file timesheet.xlsx can be used to calculate the time spent on tasks. It searches through all timelogs and summs the time spent based on difference of time between two time logs.

1. create a new sheet
2. copying the time logs in the 'timelog' column (yellow collored) of the spread sheet
3. type the ticket number above the black line
4. get the 'total time' spent on that ticket

#### Example
`
[18.11.23.12:45:00:Fri] ******** | ********************** | Coffee break******************************************************* | Not loggable
[18.11.23.13:00:00:Fri] x7-36547 | Add password validat** | Investigated current implementation******************************** | Loggable****
[18.11.23.17:00:00:Fri] ******** | ********************** | EOD**************************************************************** | ************
`

 timesheet.xlsx  will give 4.00 h worked on x7-36547
