::tlah::    ; Time Log Ticket of the day
    fix()
    insertTicketAndShortDescription(AdHockMeeting)
    return

::tltd::    ; Time Log Ticket of the day
    fix()
    insertTicketAndShortDescription(TicketOfTheDay)
    return

::tldp::    ; Time Log Deployment Ticket
    fix()
    insertTicketAndShortDescription(DeploymentTicket)
    return

::tlsm::    ; Server Maintenance Ticket
    fix()
    insertTicketAndShortDescription(ServerMaintenanceTicket)
    return

::tlsr::    ; Time Log Sprint Refining
    fix()
    insertTicketAndShortDescription(SprintRefiningTicket)
    return

::tlsf::            ;Time Log File Save
    FormatTime, CurrentDateTime,, yy.MM.dd.HH.mm.ss.
    FormatTime, CurrentDateTimeDayTwo,, ddd
    Sendinput ^s %logspath%%CurrentDateTime%%CurrentDateTimeDayTwo%.txt
    return

::tlnl::            ; Time Log New Line
    timelogstamp()
    timelogcontent()
    return


::jiradate00::      ; Today's date in Jira's format, shift starts at 10:30
::jiradate-1::      ; Today's date in Jira's format, shift starts at 10:30
::jiradate-2::      ; Today's date in Jira's format, shift starts at 10:30
::jiradate-3::      ; Today's date in Jira's format, shift starts at 10:30
::jiradate-4::      ; Today's date in Jira's format, shift starts at 10:30
::jiradate-5::      ; Today's date in Jira's format, shift starts at 10:30
    outputJiraDate(A_PriorKey,A_EndChar)
    return

timelogcontent:
    ::timelogcontent::
        timelogcontent()
        return

::tlst::
    fix()
    timelogstamp()
    return

::
::tltl::	; Time Log Time Log
    fix()
    insertAtPositionAndComeBackAt(1,"******** | Time Logging********** |",3)
    return

::tlsl::       ; Time Log Status Loggable
    fix()
    tlsl()
    return

::tlp1::    ;Time Log Position 1 : Ticket number
    fix()
    goToPosition(1)
    return

::tlp2::    ;Time Log Position 2 : Ticket Short Description
    fix()
    goToPosition(2)
    return

::tlp3::    ;Time Log Position 3 : Ticket Long Description
    fix()
    goToPosition(3)
    return

::tlp4::    ;Time Log Position 4 : Status of the time log
    fix()
    goToPosition(4)
    return

::tlis::    ; Time Log Internal Support
    fix()
    insertTicketAndShortDescription(InternalSupportTicket)
    return


::tlko::	; Time Log Kick Off
    fix()
    insertTicketAndShortDescription("TE-13383 | Kickoff*************** |")
    return
