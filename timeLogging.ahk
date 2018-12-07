#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;-------------------------------------------------------
;Time logging
;-------------------------------------------------------

needsFix                := true
logspath                := "C:\Users\e_yacoub\Documents\logs\"

TicketOfTheDay          := "TE-13894 | Deployment PhatHO***** |"
DeploymentTicket        := "TE-13894 | Deployment PhatHO***** |"
PullRequestTicket       := "TE-13897 | PR PHatHo************* |"
SprintPlanningTicket    := "TE-13631 | Sprint Planning******* |"
SprintRefiningTicket    := "TE-13682 | Sprint Refining******* |"
BranchManagementTicket  := "TE-13736 | Branch MGT RoySalam*** |"
InternalSupportTicket   := "TE-13382 | Internal support****** |"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; update regularly ;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

tltd: 	        ; Time Log Ticket of the day
    ::tltd::
        insertTicketAndShortDescription(TicketOfTheDay)
        return

tldt:           ; Time Log Deployment Ticket
    ::tldt::
        insertTicketAndShortDescription(DeploymentTicket)
        return

tlpr:	        ; Time Log Pull Request
    ::tlpr::
    insertTicketAndShortDescription(PullRequestTicket)
    return

tlbm:	        ; Time Log Branch Management
    ::tlbm::
        insertTicketAndShortDescription(BranchManagementTicket)
        return

tlsp:	        ; Time Log Sprint Planning
    ::tlsp::
        insertTicketAndShortDescription(SprintPlanningTicket)
        return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Permanent
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

::tlsf::            ;Time Log File Save
    FormatTime, CurrentDateTime,, yy.MM.dd.HH.mm.ss.
    FormatTime, CurrentDateTimeDay,, ddd
    Sendinput ^s %logspath%%CurrentDateTime%%CurrentDateTimeDay%.txt
    return

::tlnl::            ; Time Log New Line
    timelogstamp()
    timelogcontent()
    return

::jiradate00::      ; Today's date in Jira's format, shift starts at 10:30
    outputJiraDate(0)
    return

::jiradate-1::      ; Today's date in Jira's format, shift starts at 10:30
    outputJiraDate(-1)
    return

::jiradate-2::      ; Today's date in Jira's format, shift starts at 10:30
    outputJiraDate(-2)
    return
        
;;;;;;;;;;;
;POSITIONS
;;;;;;;;;;;

::tlp1::    ;Time Log Position 1 : Ticket number
    goToPosition(1)
    return

::tlp2::    ;Time Log Position 2 : Ticket Short Description
    goToPosition(2)
    return

::tlp3::    ;Time Log Position 3 : Ticket Long Description
    goToPosition(3)
    return

::tlp4::    ;Time Log Position 4 : Status of the time log
    goToPosition(4)
    return

::tlis::    ; Time Log Internal Support
    insertTicketAndShortDescription(InternalSupportTicket)
    return

::tlsr::    ; Time Log Sprint Refining
    insertTicketAndShortDescription(SprintRefiningTicket)
    return

::tlko::	; Time Log Kick Off
    insertTicketAndShortDescription("TE-13383 | Kickoff*************** |")
    return

::tltl::	; Time Log Time Log
    insertAtPositionAndComeBackAt(1,"******** | Time Logging********** |,3)
    return

::tlsl::       ; Time Log Status Loggable
    tlsl()
    return

::tlst::
    timelogstamp()
    return

;;;;;;;;;;;;;;;;
;;;FUNCTIONS;;;;
;;;;;;;;;;;;;;;;

timelogcontent:
    ::timelogcontent::
        timelogcontent()
        return

timelogstamp()
{
    time += 1, minutes
    FormatTime, timeandone, %time%, yy.MM.dd.HH:mm:00: ;format time to have seconds set to 00
    FormatTime, CurrentDateTimeDay,, ddd
    SendInput [%timeandone%
    SendInput %CurrentDateTimeDay%]
    time =
    send {space}
}

tlsl()
{
    insertAtPositionAndComeBackAt(4,"Loggable****",3)
}

timelogcontent()
{
    send ******** | ********************** | ******************************************************************* | ************
}

goToPosition(position)
{
    if (position = 01)
    {
        number:=0
    }
    if (position = 1)
    {
        number:=24
    }
    if (position = 2)
    {
        number:=35
    }
    if (position = 3)
    {
        number:=60
    }
    if (position = 4)
    {
        number:=160
    }
    sendinput {home}
    loop %number%
    {
        sendinput {right}
    }
}

insertAtPositionAndComeBackAt(position,text,newPosition:=0)
{
    goToPosition(1)
    SendInput %text%
    goToPosition(newPosition)
}
insertTicketAndShortDescription(text)
{
    insertAtPosition(1, text )
    tlsl()
}
outputJiraDate(daysToCount)
{
    FormatTime, CurrentDateTime,, d/MMM/yy
    CurrentDateTime += daysToCount,days
    SendInput %CurrentDateTime% 10:30 AM
}
