
;-------------------------------------------------------
;General
;-------------------------------------------------------


	nppnl:
		::nppnl::
			SendInput -------------------------------------------------------
			return

	timestamp:
		::timestamp::
			FormatTime, CurrentDateTime,, yy.MM.dd.HH:mm:ss:
			FormatTime, CurrentDateTimeDay,, ddd
			SendInput [%CurrentDateTime%
			SendInput %CurrentDateTimeDay%]
			SendInput {space}
			return


	nppntc:
		::nppntc::
			SendInput ^{Home}
			gosub nppnl
			SendInput {enter}
			gosub timestamp
			SendInput {enter}
			gosub nppnl
			SendInput {enter}
			gosub t8gitbranch
			gosub nppnl
			loop 3 
			{
			SendInput {Enter}
			SendInput {Up}
			}
			gosub nppnl
			SendInput {enter}{enter}
			return

	nppnc:
		::nppnc::
			SendInput ^{Home}
			gosub nppnl
			SendInput {enter}
			gosub timestamp
			SendInput {enter}
			gosub nppnl
			loop 3 
			{
			SendInput {Enter}
			SendInput {Up}
			}
			gosub nppnl
			SendInput {enter}{enter}
			return

	onnc:
		::onnc::
			gosub nppnc
			SendInput, {Up}
			SendInput, {enter}
			SendInput, {up}
			return

	nlabove:
		::nlabove::
			SendInput ^{Home}
			SendInput {enter}
			SendInput {up}

	t8gitbranch:
		::gett8gitbranch::
			Run, cmd.exe /k cd "C:\Users\e_yacoub\PhpstormProjects\tube8.front" & git branch | find "*" | clip && exit
			SendInput ^v
			return


	manyclicks:
		!^+m::
			loop 20
			{
				MouseClick
			}
			SendInput #
			return

	todo:
		::todo::
			SendInput //TODO{space}
			return
