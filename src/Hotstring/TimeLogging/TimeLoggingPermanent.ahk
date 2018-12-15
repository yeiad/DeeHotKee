::tlsf::            ;Time Log File Save
    FormatTime, CurrentDateTime,, yy.MM.dd.HH.mm.ss.
    FormatTime, CurrentDateTimeDay,, ddd
    Sendinput ^s %logspath%%CurrentDateTime%%CurrentDateTimeDay%.txt
    return

::tlnl::            ; Time Log New Line
    TimeLoggingFunction_timelogstamp()
    TimeLoggingFunction_timelogcontent()
    return


::jiradate00::      ; Today's date in Jira's format, shift starts at 10:30
::jiradate-1::      ; Today's date in Jira's format, shift starts at 10:30
::jiradate-2::      ; Today's date in Jira's format, shift starts at 10:30
::jiradate-3::      ; Today's date in Jira's format, shift starts at 10:30
::jiradate-4::      ; Today's date in Jira's format, shift starts at 10:30
::jiradate-5::      ; Today's date in Jira's format, shift starts at 10:30
    TimeLoggingFunction_outputJiraDate(A_PriorKey,A_EndChar)
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

