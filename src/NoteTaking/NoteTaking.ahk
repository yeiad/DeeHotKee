;-------------------------------------------------------
;General
;-------------------------------------------------------


	;Increase and decrease volume
	#!WheelUp::Send {Volume_Up}
	#!WheelDown::Send {Volume_Down}
	


	nppnl:
		::nppnl::
			Send -------------------------------------------------------
			return

	timestamp:
		::timestamp::
			FormatTime, CurrentDateTime,, yy.MM.dd.HH:mm:ss:
			FormatTime, CurrentDateTimeDay,, ddd
			SendInput [%CurrentDateTime%
			SendInput %CurrentDateTimeDay%]
			send {space}
			return


	nppntc:
		::nppntc::
			send ^{Home}
			gosub nppnl
			send {enter}
			gosub timestamp
			send {enter}
			gosub nppnl
			send {enter}
			gosub t8gitbranch
			gosub nppnl
			loop 3 
			{
			send {Enter}
			send {Up}
			}
			gosub nppnl
			send {enter}{enter}
			return

	nppnc:
		::nppnc::
			send ^{Home}
			gosub nppnl
			send {enter}
			gosub timestamp
			send {enter}
			gosub nppnl
			loop 3 
			{
			send {Enter}
			send {Up}
			}
			gosub nppnl
			send {enter}{enter}
			return

	onnc:
		::onnc::
			gosub nppnc
			send, {Up}
			send, {enter}
			send, {up}
			return

	nlabove:
		::nlabove::
			send ^{Home}
			send {enter}
			send {up}

	t8gitbranch:
		::gett8gitbranch::
			Run, cmd.exe /k cd "C:\Users\e_yacoub\PhpstormProjects\tube8.front" & git branch | find "*" | clip && exit
			send ^v
			return


	manyclicks:
		!^+m::
			loop 20
			{
				MouseClick
			}
			Send #
			return

	todo:
		::todo::
			send //TODO{space}
			return
