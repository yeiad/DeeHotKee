DefineProcedureconstants:
    DailyProcedureChecklist =
    (
[ ] DAILY PROCEDURE
		***********************SCRUM PREP**********************************
    [ ] Look at calendar for appointments for the day and the week*********
    [ ] Make sure my 'in progress' tickets are actually in progress********
    [ ] Read communication on teams****************************************
    [ ] Read unread emails*************************************************
		**********************IRREGULAR TASKS******************************
	[ ] Weekday PROCEDURE**************************************************
		**********************DAILY TASKS**********************************
    [ ] Log missing work in jira*******************************************
    [ ] Carryover backlog of uncompleted tasks to today********************
    [ ] Update the backlog of tasks****************************************
	[ ] Read useless emails************************************************
    [ ] Follow up emails***************************************************
    [ ] Save records from daily timelogs***********************************
	[ ] Save records from daily mistakes***********************************
	[ ] Save records from daily filled templates***************************
	[ ] Save records from daily filled procedures**************************
    [ ] Save records from daily script results*****************************
	[ ] Save records from daily notes**************************************
        ******************Daily Deployment Tasks***************************
    [ ] Update all unreleased releases with master*************************
    [ ] Execute Deployment scrpts******************************************
    [ ] Open and process Hotfix Jira Filter********************************
    [ ] Follow up on Hotfix Releases***************************************
    [ ] Review 19.Hotfix Release*******************************************
    [ ] Note status of all releasables*************************************
    [ ] Communicate status of releases to team*****************************
    [ ] Add tasks for releases that need action****************************
        ******************BUILD MASTER*************************************
	[ ] Deploy ready hotfixes**********************************************
	[ ] Deploy ready releases**********************************************
	[ ] Stage ready releasables********************************************
	[ ] Create release for groomed tickets*********************************
		******************PR***********************************************
    [ ] Follow up on my PRs************************************************
	[ ] Review PRs on which I am a reviewer********************************
	    ******************UNFINISHED TASKS*********************************
	[ ] proceed with noted tasks*******************************************
	[ ] read emails before leaving*****************************************
	[ ] plan the next day**************************************************
        ******************DEV**********************************************
	[ ] Proceed with sprint ticket*****************************************
		******************UNFINISHED TASKS*********************************
    [ ] Update procedure***************************************************
		*******************************************************************

)
DeployToProdChecklist =
(

[ ] DEPLOYMENT TO PRODUCTION
	[ ] Proceed with PRE-DEPLOYMENT TASKS procedure
	[ ] Proceed with PRE-DEPLOYMENT RELEASE VALIDATION procedure
	[ ] Proceed with DEPLOYMENT NOTICES VALIDATION procedure
	[ ] Every time the graph is checked, communicate with the team
	[ ] Before every attempt of deployment make sure QA is available
	[ ] Before every attempt of deployment inform team
	[ ] At every hiccup, inform the team
	[ ] Communicate with team when deployment is live
	[ ] Ask QA to check core checklist
	[ ] proceed with DEPLOY LOCKED RELEASE procedure
	[ ] Check the graphs
	[ ] Verify Code Diff Quickly and proceed with BAD CODE ON PROD procedure if necessary
	[ ] remove release from script
	[ ] Send an email to PM for the deployment
	[ ] put notes in the release ticket
	[ ] Check the graph
	[ ] Get QA's approval of the core checklist
	[ ] if OK proceed with POST-DEPLOYMENT procedure
	[ ] Update this procedure

)

PostDeploymentChecklist =
(

[ ] POST-DEPLOYMENT
	[ ] Merge Release In Master
	[ ] Run update release branches script
	[ ] force FixVersion in postdeployment script
	[ ] Run deploy command
    [ ] Change status of fixVersion
    [ ] Set release date of fixVersion
	[ ] Run postdeployment deployment script
	[ ] Run AnalyzePullRequests deployment script
	[ ] Setup monocle stage-reservation for stage
	[ ] Cross releases off the board
	[ ] Erease release off the board
	[ ] Send email to PM
	[ ] Update templates for this procedure
	[ ] Update this procedure
)

PreDeploymentTasksChecklist =
(

[ ] PRE-DEPLOYMENT TASKS
    [ ] Fill Procedure Template
    [ ] Not Friday
    [ ] Testers are available for 1h
    [ ] Testers not on lunch
    [ ] Open MS Teams Thread
    [ ] QA OK to go
    [ ] 3rd party OK to go
    [ ] Update this procedure
)

CreateABunchOfReleasesChecklist =
(

[ ] CREATE A BUNCH OF RELEASES
	[ ] Before starting remove label standalone_1 from tickets
	[ ] View the list of approved pull requests targeted towards 'pull-request-destination'
	[ ] Open all PRs with approvals
	[ ] For every PR proceed with PR BASIC CHECK
	[ ] Open Jira Filter "Deployment: Resolved Clean"
	[ ] Open Jira Filter "Deployment: Resolved Clean Basic Check Not Done"
	[ ] Process every ticket in "Deployment: Resolved Clean Basic Check Not Done"
	[ ] Open Jira Filter for Bundles
	[ ] Fixed by links must have the same components
	[ ] Fixed by links must be 'done'
	[ ] Blocked by links must be 'done'
	[ ] FS FF dependent on must be 'done'
	[ ] Subtasks must be a deployable on its own
	[ ] Subtasks must have same fixversion as parent if not deployable
	[ ] Investigate reporter of tickets
	[ ] Investigate summary and description of tickets for keywords
	[ ] Open Jira Filters for Exclusions
	[ ] Investigate any exclusions with team
	[ ] Ensure ticket components match code
	[ ] Exclude tickets with huge timelogs (>16h) and amount of code (>12 files)
	[ ] Exclude player related tickets (inform Alexei Sulga)
	[ ] Exclude Ads related tickets
	[ ] Exclude DMCA related tickets
	[ ] Exclude Uploader related tickets
	[ ] Exclude 3rd party tickets like VIT / VICE
	[ ] Exclude Nicole Tickets
	[ ] Exclude suspicious code tickets
	[ ] Exclude reflected tickets
	[ ] Exclude remote dev tickets
	[ ] Put labels on SA releases standalone_1 on suspicious code tickets
	[ ] Batch proceed with RELEASE SETUP for every bundle
	[ ] Remove label standalone_1
	[ ] Remove 'resolved_basic_check_done' from merged tickets
	[ ] Update the wiki procedure if there's any change to this procedure
	[ ] Close all opened tabs
	[ ] Update this procedure

)

PRBsicCheckChecklist =
(

[ ] PR BASIC CHECK
	[ ] Execute PreReleaseTicketBasicChecks command
	[ ] Check commit messages
	[ ] Check parent tasks
	[ ] Check sibling tasks
	[ ] Put a label 'resolved_basic_check_done'
	[ ] Update this procedure
)


ReleaseSetupChecklist =
(

[ ] RELEASE SETUP
	[ ] Fill template
	[ ] Proceed with ISSUE MITIGATION procedure
	[ ] Ask people involved if there's other PRs that should go in there
	[ ] Determine priority of release
	[ ] Ensure All tickets are Resolved
	[ ] Proceed with FIND RELEASE NAME procedure
	[ ] Use the script createRelease
	[ ] Foreach ticket assign a fixVersion
	[ ] proceed with AUTODEPLOY RELEASE procedure if necessary
	[ ] Go back to ISSUE MITIGATION procedure
	[ ] Foreach PR set destination to release branch
	[ ] Prepare the order of merging. Big tickets first, then small. Reducing conflict resolution volume
	[ ] Procedure | Foreach ticket MERGE PR
	[ ] If conflicts | wait until conflicts are resolved before proceeding
	[ ] proceed with DEPLOY LOCKED RELEASE procedure
	[ ] proceed with POST-DEPLOYMENT procedure
	[ ] MS Teams | Send a communication to Releases & Deployments according to template
	[ ] Save the link for communication
	[ ] Execute PostReleaseCreationValidation
	[ ] Update template
	[ ] Update procedure
[ ] ISSUE MITIGATION
	[ ] proceed with PREVIOUSLY MERGED CODE CHECK procedure
	[ ] proceed with STAGE PREFERENCE CHECK procedure
	[ ] Update Procedure
[ ] STAGE PREFERENCE CHECK
	[ ] Check if there's a desired stage
	[ ] Find Available Stage from Jira Release board
	[ ] Ensure availability in Bamboo
	[ ] If the stage is being shotgonned permanently, clearly label it
	[ ] If stage is used proceed with SWAP STAGE procedure
	[ ] Update Procedure
[ ] PREVIOUSLY MERGED CODE CHECK
	[ ] Check if code was previously merged
	[ ] Put label 'faklfjhafdafh'
	[ ] For each of faklfjhafdafh tickets proceed with TICKET AVOID CONTAMINATION  proceedure
	[ ] If there is faklfjhafdafh tickets proceed with RELEASE AVOID CONTAMINATION procedure
	[ ] Go back to previous checklist before continuing
	[ ] Foreach faklfjhafdafh ticket create a PR
	[ ] Update Procedure

)

FindReleaseNameChecklist =
(

[ ] FIND RELEASE NAME
	[ ] Use template to generate fixVersion name
	[ ] Set parameters for createRelease command
	[ ] Execute createRelease command
	[ ] Execute postReleaseCreation command
	[ ] Execute PostDeploymentConflictManagement command
	[ ] Add start date to fixVersion
	[ ] Prioratize fixVersion in the release management board
	[ ] Add the fixVersion name to the "update branches script"
	[ ] Add release label to whiteboard's calendar
	[ ] Add release label to whiteboard's list of releases
	[ ] Update Procedure
)

EssentialDeploymentToProdChecklist =
(

[ ] DEPLOYMENT OF RELEASE TO PRODUCTION - ESSENTIALS
	[ ] If there is any questions or unaccounted situation, please refer to BM
	[ ] Not Friday
	[ ] Testers are available for 1h
	[ ] Testers not on lunch
	[ ] Testers OK to go
	[ ] BE Devs OK to go
	[ ] Open MS Teams Thread
	[ ] Fill Procedure Template
	[ ] Proceed with PRE-DEPLOYMENT RELEASE VALIDATION procedure
	[ ] Proceed with DEPLOYMENT NOTICES VALIDATION procedure
	[ ] If Deploy tasks | Execute deployment tasks
	[ ] Ensure Testers are available before every deployment attempt
	[ ] Inform team via the Thread that Deployment is about to take place
	[ ] Inform team via the Thread of any hiccups during deployment
	[ ] Attempt a deployment
	[ ] Ensure the deployment is live
	[ ] Inform team via the Thread that the deployment is live
	[ ] Ask QA to check core checklist
	[ ] If Deploy tasks | Post-deploy Command to run
	[ ] Set alarms to check the graphs
	[ ] Check the graphs
	[ ] Insert a screenshot of the graphs in the Thread
	[ ] Quickly go through code make ensure there are no blantant errors
	[ ] Update tickets status to deployed
	[ ] Change status of fixVersion to released
	[ ] Set deployment date of fixVersion
	[ ] Inform BM of the deployment
	[ ] Remove release from release branches update script
	[ ] Send an email to PM for the deployment with the subject 'RE: Tube8 Q3 Deployments'
	[ ] On the whiteboard, write the release name on the date of deployment and cross it
	[ ] On the whiteboard, erease release off the list of releases
	[ ] Insert a comment in the release ticket with the filled template from this procedure
	[ ] Get QA's approval for the quick checks
	[ ] Ensure QA approve the quick checks
	[ ] Check the graph
	[ ] Merge deployed branch in master
	[ ] Run update release branches script
	[ ] Run postdeployment deployment script
	[ ] Run AnalyzePullRequests deployment script
	[ ] proceed with POST-DEPLOYMENT CHECKS procedure
	[ ] Update this procedure
[ ] POST-DEPLOYMENT CHECKS
	[ ] If inform_stakeholder | Inform stakeholder
	[ ] If inform_stakeholder | Remove the label

)

PreDeploymentReleaseValidationChecklist =
(

[ ] PRE-DEPLOYMENT RELEASE VALIDATION
    [ ] Ensure all tickets are verified
    [ ] Ensure release branch is up to date with master
    [ ] Ensure release branch is up to date with branch currently deployed to production environment
    [ ] Ensure depending tickets are done
    [ ] Ensure subtasks are done
    [ ] Ensure there are no tickets with no merged code
    [ ] Ensure absence of bogus commits
    [ ] Update this procedure
)

DeploymentNoticesValidationChecklist =
(

[ ] DEPLOYMENT NOTICES VALIDATION
	[ ] Check 'inform_stakeholder' label
	[ ] Check 'deploy-tasks' label
	[ ] Check 'command-to-run' label
	[ ] Check 'deploy-task' label
	[ ] Update this procedure
)


EssentialReleaseCreationChecklist =
(

[ ] RELEASE SETUP - ESSENTIAL *incomplete*
	[ ] Report any un-accounted scenario to the Build Master
	[ ] proceed with PRE-RELEASE RELEASE BASIC CHECKS
	[ ] List the tickets of the release
	[ ] Proceed with PRE-RELEASE TICKETS BASIC CHECKS on every ticket
	[ ] Determine priority of release
	[ ] Proceed with FIND RELEASE NAME procedure
	[ ] Proceed with CREATE FIXVERSION procedure
	[ ] Procedure with STAGING ESSENTIAL procedure
	[ ] Foreach ticket proceed with PUT RESOLVED TICKET IN RELEASE proceedure
	[ ] Run PostReleaseCreationValidation Command - creates a release ticket (ask BM)
	[ ] Inform team of the new release
	[ ] Copy communication reference to release ticket
	[ ] Update procedure
[ ] PRE-RELEASE RELEASE BASIC CHECKS
	[ ] Pull request destination's HEAD is the same as master's HEAD
[ ] PRE-RELEASE TICKETS BASIC CHECKS
	[ ] Execute the script PreReleaseTicketBasicChecks on the tickets
	[ ] Open ticket PR in Stash
	[ ] Ensure the destination is pull request destination
	[ ] Ensure there is no conflict
	[ ] Determine if PR contains BE, FE code
	[ ] Ensure there are appropriate approvers
	[ ] Ensure there are adequate approvals
	[ ] Ensure there are no commit messages with different tickets
	[ ] Open Jira ticket
	[ ] Ensure there is no fixVersion
	[ ] Check Sub Tasks: ensure they are done
	[ ] Check Parent Task: ensure it's part of the release
	[ ] Check Sibling Task: ensure it's part of the release
	[ ] Check 'fixes' link: include ticket in release
	[ ] Check 'fixed by' link: ensure ticket is done
	[ ] Check 'FS-depended by' link: ensure ticket is done
	[ ] Check 'FS-depended on' link: ensure ticket is in release
	[ ] Check 'Blocked by' links: ensure ticket is done
	[ ] Ensure ticket status is 'resolved'
[ ] FIND RELEASE NAME
	[ ] Open templates for procedure
	[ ] Specify identifier
	[ ] Specify prefix
	[ ] Specify suffix
	[ ] Specify label
	[ ] generate fixVersion name
[ ] CREATE FIXVERSION
	[ ] Create a fixVersion in Jira with the fixVersion name
	[ ] Add start date to fixVersion
	[ ] Prioratize fixVersion in the release management board
	[ ] Create a branch from master with a name identical to the fixVersion name
	[ ] Add the fixVersion name to the "update branches script" (ask BM)
	[ ] Add release label to whiteboard's calendar
	[ ] Add release label to whiteboard's list of releases
[ ] STAGING ESSENTIAL
	[ ] Find Available Stage
	[ ] Add the Stage name as a description to the fixVersion
	[ ] Setup autodeployment on the stage environment
	[ ] Deploy the build to the stage environment
	[ ] Setup monocle stage-reservation
[ ] PUT RESOLVED TICKET IN RELEASE
	[ ] Open Jira Ticket
	[ ] Set the fixVersion on the ticket
	[ ] Open Stash
	[ ] Change PR destination to the release branch
	[ ] Merge PR
	[ ] Open Jira Ticket
	[ ] Set status to On Stage

)

AutodeployReleaseChecklist =
(

[ ] AUTODEPLOY RELEASE -------------------------------------------------------
	[ ] Jira | Enter Stage in fixversion description
	[ ] Bamboo | Setup a branch
	[ ] Bamboo | Set a trigger for the stage environment on the build of the branch
	[ ] Procedure | Update

)

MergePRChecklist =
(

[ ] MERGE PR
	[ ] Check if it's a Hotfix
	[ ] proceed with PR BASIC CHECK
	[ ] Execute createRelease command
	[ ] proceed with CONFLICT PR procedure if necessary
	[ ] Merge PR
	[ ] Proceed with CONFLICT MANAGEMENT procedure
	[ ] Update this procedure
)

ConflictPRChecklist =
(

[ ] CONFLICT PR
	[ ] Open template
	[ ] Decline the conflicting PR
	[ ] Reopen declined PR's ticket
	[ ] Take note of the conflict in the template
	[ ] Send message in Jira ticket
	[ ] Send message on Stash
	[ ] Update this procedure

)

ConflictManagementChecklist =
(

[ ] CONFLICT MANAGEMENT
	[ ] Template | Open
	[ ] Stash | batch open PRs with same destination
	[ ] Note | Ticket, PR ID, author of PR
	[ ] Note conflicting releases [??? [19.07.18.13:44:51:Thu] ]
	[ ] Resolve trivial conflicts
	[ ] If Resolved | Note commit hash of resolutions
	[ ] If Resolved | Note branch with Resolved conflict [??? [19.07.18.13:58:05:Thu] ]
	[ ] Determine if conflict is major
	[ ] If Not Resolved | Procedure | th CONFLICT PR procedure
	[ ] If Major | Note commit hash, author, ticket of both branchs for conflicting lines [ ??? [19.07.18.13:58:18:Thu] ]
	[ ] If Major | Create a technical ssubtask to merge conflicts with destination
	[ ] If Major | Set noqa and fixVersion on the ticket
	[ ] If Major | Leave a message in re-opened ticket as per template
	[ ] If Major | Note tickets created
	[ ] Template | Update
	[ ] Procedure | Update

)

DeployLockedReleaseChecklist =
(
[ ] DEPLOY LOCKED RELEASE
	[ ] Check Deploy tasks, Command to run etc
	[ ] pre-deploy Command to run
	[ ] Deploy
	[ ] Confirm that deployment is live
	[ ] post-deploy Command to run
	[ ] Update this procedure

)

DeployHotfixToProdChecklist  =
(

[ ] DEPLOY HOTFIX TICKET
    [ ] Should someone approve the hotfix?
    [ ] Get a list of tickets that will go in hotfix
	[ ] Validate presence of hotfix label
	[ ] Validate presence of hotfix effort type
	[ ] Proceed with PR BASIC CHECK on all tickets
	[ ] proceed with FIND RELEASE NAME
	[ ] Setup branch in bamboo for hotfix branch
	[ ] Proceed with MERGE PR procedure
	[ ] Proceed with DEPLOY LOCKED RELEASE procedure to stage
	[ ] proceed with POST-DEPLOYMENT procedure for stage
	[ ] Get QA verification
	[ ] Proceed with DEPLOY LOCKED RELEASE procedure to prod
	[ ] Check the graphs
	[ ] Proceed with POST-DEPLOYMENT procedure for prod
	[ ] Update the procedure
)

ReleaseSetupTemplate =
    (

-------------RELEASE SETUP------------------------------------------
Time Stamp:
Title:
People Involved:
Stage:
MS Teams Thread:
Tickets:
    )

FindReleaseNameTemplate =
(

----FIND RELEASE NAME--------------------------------

Week number:
	[yy].[m].[wom]

suffix:
	 wr: weekly release / standard release
	 sa: standalone
	 rn: Reflected Network

prefix:
    release/
    hotfix/

Release name:
	release/[week number]-[suffix]-[cool name]


Summary:			{[DEPLOYMENT]} [Release name]
work effort type: 	Documentation
fixversion :		release/19.6.2-sa-country-search
Component:			Back End
Assignee:			Me
Description:		Document Deployment notes for this release
Sprint:				Current Sprint

)

DeployToProdTemplate =
(

-------------DEPLOY TO PROD----------------------------
TIMESTAMP:
    [TIMESTAMP]

RELEASE INFORMATION:
    [RELEASE NAME]|[RELEASE JIRA URL]

TESTING PARTY:
	REPORTERS:
	    [LIST OF PEOPLE]
	DEVS:
	    [LIST OF PEOPLE]
	TESTERS:
	    [LIST OF PEOPLE]

DEPLOYMENT TICKET:
	[JIRA TICKET FOR DEPLOYMENT]

MS TEAMS CONVERSATION:
    [TEAMS.MICROSOFT.COM URL]

Core checklist:
	[ ] Sign In
	[ ] Videos Play
	[ ] Ads work
	[ ] PreRolls
	[ ] DMCA
	[ ] Pagination
	[ ] Search
	[ ] Mobile Popunders
)

DeployHotfixToProdTemplate =
(
----DEPLOY HOTFIX TICKET STRAIGHT TO PROD----
LIST OF TICKETS:
	[LIST][TICKETS]

HOTFIX FIXVERSION NAME:
	[FIXVERSION NAME]

RELEASEURL:
	[RELEASE URL]

RELEASE TICKET
	[RELEASE TICKET URL]

PEOPLE INVOLVED:
	[LIST][PEOPLE INVOLVED]

TESTING PARTY:
	[TESTING PARTY]
)

    return

::prdaily::
    gosub DefineProcedureconstants
    Clipboard := DailyProcedureChecklist
    SendInput ^v
    return

::prdpprch::
    gosub DefineProcedureconstants
    Clipboard := (DeployToProdChecklist . PreDeploymentTasksChecklist . PreDeploymentReleaseValidationChecklist . DeploymentNoticesValidationChecklist . PostDeploymentChecklist )
    SendInput ^v
    return

::prdpprte::
    gosub DefineProcedureconstants
    Clipboard := DeployToProdTemplate
    SendInput ^v
    return

::prcrrech::
    gosub DefineProcedureconstants
    Clipboard := CreateABunchOfReleasesChecklist . PRBsicCheckChecklist . ReleaseSetupChecklist . FindReleaseNameChecklist . AutodeployReleaseChecklist . MergePRChecklist . ConflictPRChecklist . ConflictManagementChecklist . DeployLockedReleaseChecklist . PostDeploymentChecklist
    SendInput ^v
    return

::prcrrete::
    gosub DefineProcedureconstants
    Clipboard := ReleaseSetupTemplate . FindReleaseNameTemplate
    SendInput ^v
    return
# //TODO add pr basic check to prdphfprch
::prdphfprch::
    gosub DefineProcedureconstants
    Clipboard := DeployHotfixToProdChecklist . FindReleaseNameChecklist . MergePRChecklist
    SendInput ^v
    return

::prdphfprte::
    gosub DefineProcedureconstants
    Clipboard := DeployHotfixToProdTemplate . FindReleaseNameTemplate . DeployToProdTemplate
    SendInput ^v
    return

::prcrreesch::
    gosub DefineProcedureconstants
    Clipboard := EssentialReleaseCreationChecklist
    SendInput ^v
    return

::prdppresch::
    gosub DefineProcedureconstants
    Clipboard := EssentialDeploymentToProdChecklist . DeploymentNoticesValidationChecklist . PreDeploymentReleaseValidationChecklist . PreDeploymentTasksChecklist
    SendInput ^v
    return
