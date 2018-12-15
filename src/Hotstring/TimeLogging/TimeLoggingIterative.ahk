::tlah::    ; Time Log Ticket of the day
    TimeLoggingFunction_fix()
    TimeLoggingFunction_insertTicketAndShortDescription(AdHockMeeting)
    return

::tltd::    ; Time Log Ticket of the day
    TimeLoggingFunction_fix()
    TimeLoggingFunction_insertTicketAndShortDescription(TicketOfTheDay)
    return

::tldp::    ; Time Log Deployment Ticket
    TimeLoggingFunction_fix()
    TimeLoggingFunction_insertTicketAndShortDescription(DeploymentTicket)
    return

::tlpr::    ; Time Log Pull Request
    TimeLoggingFunction_fix()
    TimeLoggingFunction_insertTicketAndShortDescription(PullRequestTicket)
    return

::tlsp::    ; Time Log Sprint Planning
    TimeLoggingFunction_fix()
    TimeLoggingFunction_insertTicketAndShortDescription(SprintPlanningTicket)
    return



::tlsr::    ; Time Log Sprint Refining
    fix()
    insertTicketAndShortDescription(SprintRefiningTicket)
    return