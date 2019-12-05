timelogstamp()
{
    time += 1, minutes
    FormatTime, timeandone, %time%, yy.MM.dd.HH:mm:00: ;format time to have seconds set to 00
    FormatTime, CurrentDateTimeDay,, ddd
    SendInput [%timeandone%
    SendInput %CurrentDateTimeDay%]
    time =
    sendinput {space}
}

tlsl()
{
    insertAtPositionAndComeBackAt(4,"Loggable****",3)
}

timelogcontent()
{
    sendinput ******** | ********************** | ******************************************************************* | ************
}

goToPosition(position)
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

    if (position = time)
    {
        number:=10
    }

    SendInput {home}

    loop %number%
    {
        SendInput {right}
    }
}

insertAtPositionAndComeBackAt(position,text,newPosition:=0)
{
    goToPosition(position)
    SendInput %text%
    goToPosition(newPosition)
}
insertTicketAndShortDescription(text)
{
    insertAtPosition(1, text)
    tlsl()
}

insertAtPosition(position,text){
   goToPosition(position)
   SendInput %text%
}

outputJiraDate(priorKey, daysToCount)
{
	if (priorKey = "NumpadSub" || "NumpadSub")
	{
		date := a_now
		date += daysToCount, D
		FormatTime,today,% date, d/MMM/yy
		SendInput % (today . " 10:30 AM")
	}
}

fix(){
    loop 5
    {
        SendInput ^z
    }
}

