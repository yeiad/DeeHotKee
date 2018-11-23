#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;-------------------------------------------------------
;Time logging
;-------------------------------------------------------

	;Time Log File Save // sometimes it doesn't type the C in the beginning of the path
	tlsf:
		::tlsf::
			gosub fix
			FormatTime, CurrentDateTime,, yy.MM.dd.HH.mm.ss.
			FormatTime, CurrentDateTimeDay,, ddd
			Sendinput ^s C:\Users\e_yacoub\Documents\logs\%CurrentDateTime%%CurrentDateTimeDay%.txt
			return


	; Time Log New Line
		tlnl:
			::tlnl::
			gosub timelog
			gosub timelogtemplate
			return

	; Today's date in Jira's format, shift starts at 10:30
	jiratoday:
		::jiratoday::
			FormatTime, CurrentDateTime,, d/MMM/yy
			SendInput %CurrentDateTime% 10:30 AM
			return

	;Time Log Position 1 : Ticket number
	tlp1:
		::tlp1::
		gosub fixwithflag
		sendinput {home}
		loop 24
		{
			sendinput {right}	
		}
		return

	;Time Log Position 2 : Ticket Short Description
	tlp2:
		::tlp2::
		gosub fixwithflag
		sendinput {home}
		loop 35
		{
			sendinput {right}	
		}
		return


	;Time Log Position 3 : Ticket Long Description
	tlp3:
		::tlp3::
		gosub fixwithflag
		sendinput {home}
		loop 60
		{
			sendinput {right}	
		}
		return

	;Time Log Position 4 : Status of the time log
	tlp4:
		::tlp4::
		gosub fixwithflag
		sendinput {home}
		loop 130
		{
			sendinput {right}	
		}
		return

	; Time Log Internal Support	
	tlis:
		::tlis::
			gosub fixwithflag
			fixed := false
			gosub tlp1
			SendInput TE-13382 | Internal support
			loop 6
			{
			sendinput *
			}
			gosub tlp4
			SendInput Loggable
			gosub tlp3
			fixed := true
			return

	; Time Log Ticket of the day
	tltd:
		::tltd::
			gosub fixwithflag
			fixed := false
			gosub tlp1
			SendInput TE-13876 | BE MM Pornstars
			loop 7
			{
				SendInput *
			}
			GoSub tlp4
			SendInput Loggable
			Loop 4
			{
				SendInput *
			}
			GoSub tlp3
			GoSub tlfx
			return

	; Time Log Pull Request
	tlpr:
		::tlpr::
			gosub fixwithflag
			fixed := false
			gosub tlp1
			SendInput TE-13739 | PR RoySalam*********** |
			GoSub tlp4
			GoSub tlsl
			GoSub tlp3
			GoSub tlfx
			return

	; Time Log Branch Management
	tlbm:
		::tlbm::
			gosub fixwithflag
			fixed := false
			gosub tlp1
			SendInput TE-13736 | Branch MGT RoySalam*** |
			GoSub tlp4
			GoSub tlsl
			GoSub tlp3
			GoSub tlfx
			return

	; Time Log Sprint Planning		
	tlsp:
		::tlsp::
			gosub fixwithflag
			fixed := false
			gosub tlp1
			SendInput TE-13631 | Sprint Planning******* |
			GoSub tlp4
			GoSub tlsl
			GoSub tlp3
			GoSub tlfx
			return
		
	; Time Log Sprint Refining
	tlsr:
		::tlsr::
			gosub fixwithflag
			fixed := false
			gosub tlp1
			SendInput TE-13682 | Sprint Refining******* |
			GoSub tlp4
			GoSub tlsl
			GoSub tlp3
			GoSub tlfx
			return
			

	; Time Log Status Loggable
	tlsl:
		::tlsl::
			GoSub fixwithflag
			GoSub tlp4
			SendInput Loggable****
			return

	;;;;;;;;;;;;
	;INTERNAL
	;;;;;;;;;;;;
		fix:
			loop 5
			{
				sendinput ^z
			}
			sendinput {home}
			return


		; Time Log Toggle Variabl 'fixed'
		tlfx:
			::tlfx::
				if fixed
				{
					gosub fix
				}
				fixed := !fixed
				return

		timelogtemplate:
			gosub timelogcontent 
			return


		timelogcontent:
			::timelogcontent::
				send ******** | ********************** | ******************************************************************* | ************
				return

		timelog:
			::timelogstamp::
				time += 1, minutes
				FormatTime, timeandone, %time%, yy.MM.dd.HH:mm:00: ;format time to have seconds set to 00
				FormatTime, CurrentDateTimeDay,, ddd
				SendInput [%timeandone%
				SendInput %CurrentDateTimeDay%]
				time =
				send {space}
				return


		fixwithflag:
			if fixed
			{
				loop 5
				{
					sendinput ^z
				}
				fixed := true
			}
			return
