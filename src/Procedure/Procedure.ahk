DefineProcedureconstants:
    DailyProcedureChecklist =
    (
[ ] DAILY PROCEDURE
    [ ] Look at calendar for appointments for the day and the week*********
    [ ] Read what was done yesterday***************************************
    [ ] Carryover backlog of uncompleted tasks to today********************
    [ ] Copy order of priorities of releases*******************************
    [ ] Update the backlog of tasks****************************************
    [ ] Read unread emails*************************************************
    [ ] Follow up emails***************************************************
    [ ] Skim through All mail**********************************************
    [ ] Log missing work in jira*******************************************
    [ ] Save records of work notes*****************************************
    [ ] Make sure my tickets have the right statuses***********************
    [ ] Read communication on teams
        ******************Daily Deployment Tasks***************************
    [ ] Update all unreleased releases with master*************************
    [ ] Process conflicting PRs********************************************
    [ ] Make sure PRs have reviewers***************************************
    [ ] Make sure the PRs have proper destinations*************************
    [ ] Make sure PR's with SA destination has a fixVersion****************
    [ ] Make sure PR's that need work have a reopened ticket***************
    [ ] Make sure 'No fixVersion' filter in Jira is empty******************
    [ ] Process Resolved Tickets with fixversion and ummerged pr***********
    [ ] Process Resolved Tickets with no code******************************
    [ ] Merge Resolved tickets with a fixVersion***************************
    [ ] Review Hotfix Jira Filter******************************************
    [ ] Ask Why is a hotfix blocked****************************************
    [ ] Review Hotfix Releases*********************************************
    [ ] Review 19.Hotfix Release*******************************************
    [ ] Note status of all releasables*************************************
    [ ] Communicate status of releases to team*****************************
    - ---------------DEPLOYMENTS---------------------------
    [ ] Add tasks for releases that need action****************************
    - -----------------------------------------------------
    [ ] Review PRs on which I am a reviewer********************************
    [ ] Follow up on my PRs************************************************
    - -----------------------------------------------------
    [ ] Log yesterdays' weekday work done**********************************
    [ ] Log yesterdays' mistakes*******************************************
    [ ] Log yesterdays' BM related problems********************************
    - -----------------------------------------------------
    [ ] Prepare tomorrows' SCRUM*******************************************
    - -----------------------------------------------------
    [ ] Weekday PROCEDURE**************************************************
    [ ] Update procedure***************************************************
)
DeployToProdChecklist =
(

[ ] DEPLOYMENT TO PRODUCTION
	[ ] Name the deployable
	[ ] Name the envolved party
	[ ] Name the testing party
	[ ] Name Deployment ticket
	[ ] Confirm that it is not Friday
	[ ] Confirm that testing party will ther 1h post-deployment
	[ ] Confirm that Testing party isn't on lunch
	[ ] Get Confirmation from Deployment Admins that deployment is a go
	[ ] Get Confirmation from QA release is ready to deploy
	[ ] Get Confirmation from 3rd party release is ready to deploy
	[ ] Check tickets with label 'inform_stakeholder' to explicitly inform them that the ticket got deployed
	[ ] Start an MS Teams Thread about the release
	[ ] Copy link for thread
	[ ] check linked tickets (blocks, fixes)
	[ ] check subtasks
	[ ] Investigate tickets with no merged code and no 19.NoCode fixversion
	[ ] Ensure all tickets are 'verified'
	[ ] Compare diff master to release
	[ ] Compare diff currently deployed branch to release
	[ ] If Diff | Update branch with master and currently deployed branch
	[ ] Check Deploy tasks, Command to run etc
	[ ] If it's a hotfix | Createa a bamboo build
	[ ] Run Pre-Deployment Commands to run
	[ ] Inform team I'm about to deploy
	[ ] Attempt a deployment
	[ ] If json feed is created | set an alarm to check when the deployment gets live
	[ ] If deployment fails, try again in 10 minutes
	[ ] Confirm that deployment is live
	[ ] Communicate with team when deployment is live
	[ ] post-deploy Command to run
	[ ] Set alarms to check the graphs
	[ ] Check the graphs
	[ ] Communicate with team about graphs
	[ ] Do quick test of deployment
	[ ] If broken Revert to last stable build
	[ ] Ask QA to do p1 checklist before merging
	[ ] Create a PR from release branch to master
	[ ] Quickly go through code make sure there are no blantant errors
	[ ] If errors | Calmly analyze impact and major risks
	[ ] If errors | Take Damage Control actions
	[ ] If errors | Check Documented similar mistakes
	[ ] If errors | Find the exact cause of the issue
	[ ] If errors | Inform the team about the mistake
	[ ] If errors | Document Mistake and cause
	[ ] If errors | Discuss with team solutions
	[ ] If errors | Add task to discuss mitigation with team
	[ ] If errors | Add task to Document action taken, solutions, mitigations, causes, etc
	[ ] If errors | Wait for situation to be contained before proceeding
	[ ] Update tickets status to deployed
	[ ] Change status of fixVersion to released if applicable
	[ ] remove releases from notepad++
	[ ] remove release from script
	[ ] If Hotfix | write on board
	[ ] Cross releases off the board
	[ ] If inform_stakeholder | Inform stakeholder
	[ ] If inform_stakeholder | Remove the label
	[ ] Check the graph
	[ ] if QA gives p1 approval | Merge deployed branch in master
	[ ] Run update release branches script
	[ ] Procedure | Conflict Management
	[ ] Write in MS Teams Thread the conflict notes
	[ ] Write Deployment Notes For Jira Deployment Ticket on deployment ticket
	[ ] Remove release from tabs outliner
	[ ] Check all task boxes for that deployment in tasks
	[ ] Update templates for this procedure
	[ ] Update this procedure
)

DeployToProdTemplate =
(

[RELEASE NAME]	| [RELEASE JIRA URL]

Envolved Party:
	[LIST OF ENVOLVED PEOPLE]

Testing Party:
	[LIST OF TESTING PEOPLE]

Deployment Ticket:
	[JIRA TICKET FOR DEPLOYMENT]

MS Teams:
    [TEAMS.MICROSOFT.COM URL]

Conflicting PRs:
[LIST][PRS: PR ID, JIRA TICKET, TICKET ASSIGNEE]

Conflicting releases:
	STATUS		| RELEASE											| COMMIT
	__________________________________________________________________________________________
	[RESOLVED/NOT RESOLVED/	| [CONFLICTING RELEASE NAME]					| [COMMIT HASH]
    -------------------------------------------------------
    Conflicting files in [CONFLICTING RELEASE NAME]:
        [CONFCLITING FILE RELATIVE PATH]

DEPLOYMENT TICKET NOTES:

Caused conflicts with:
[LIST][RESOLVED/NOT RESOLVED/	| [CONFLICTING RELEASE NAME]
[LIST][PRS: PR ID, JIRA TICKET, TICKET ASSIGNEE]

Deployment link:
	[BAMBOO LINK FOR DEPLOYED BUILD]
)
    return

::prdaily::
    gosub DefineProcedureconstants
    Clipboard := DailyProcedureChecklist
    SendInput ^v
    return

::prdpprod::
    gosub DefineProcedureconstants
    Clipboard := DeployToProdChecklist . DeployToProdTemplate
    SendInput ^v
    return
