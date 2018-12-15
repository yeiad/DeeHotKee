TimeLoggingFunction_timelogstamp()
{
    time += 1, minutes
    FormatTime, timeandone, %time%, yy.MM.dd.HH:mm:00: ;format time to have seconds set to 00
    FormatTime, CurrentDateTimeDay,, ddd
    SendInput [%timeandone%
    SendInput %CurrentDateTimeDay%]
    time =
    send {space}
}

TimeLoggingFunction_tlsl()
{
    insertAtPositionAndComeBackAt(4,"Loggable****",3)
}

TimeLoggingFunction_timelogcontent()
{
    send ******** | ********************** | ******************************************************************* | ************
}

TimeLoggingFunction_goToPosition(position)
{
    if (position = 0)
    {
        number:=0
    }
    if (position = 1)
    {
        number := 24
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
        number:=130
    }

    Send {home}

    loop %number%
    {
        Send {right}
    }
}

TimeLoggingFunction_insertAtPositionAndComeBackAt(position,text,newPosition:=0)
{
    goToPosition(position)
    Send %text%
    goToPosition(newPosition)
}
TimeLoggingFunction_insertTicketAndShortDescription(text)
{
    insertAtPosition(1, text)
    tlsl()
}

TimeLoggingFunction_insertAtPosition(position,text){
   goToPosition(position)
   Send %text%
}

TimeLoggingFunction_outputJiraDate(priorKey, daysToCount)
{
	if (priorKey = "NumpadSub" || "NumpadSub")
	{
		date := a_now
		date += daysToCount, D
		FormatTime,today,% date, d/MMM/yy
		Send % (today . " 10:30 AM")
	}


}

TimeLoggingFunction_fix(){
    loop 5
    {
        send ^z
    }
}

