DefineProcedureconstants:
    DailyProcedureChecklist =
    (

[ ] DAILY PROCEDURE
    [ ] Calendar***********************************************************
    [ ] Tickets status*****************************************************
    [ ] MS Teams***********************************************************
    [ ] Unread emails******************************************************
	[ ] Non-Daily Procedure************************************************
	[ ] Tasks**************************************************************
    [ ] Hotfix*************************************************************
    [ ] Update branches****************************************************
    [ ] Analayze PullRequests**********************************************
    [ ] Analyze Releases***************************************************
		******************END OF DAY***************************************
	[ ] Unread communication***********************************************
	[ ] plan the next day**************************************************
	[ ] Update procedure***************************************************
	[ ] Log time***********************************************************
        *****************INTERRUPTIONS/OVERRULING**************************
	[ ] Release******DD****************************************************
	[ ] Hotfix*************************************************************
	[ ] Meeting************************************************************
		******************SCRIPTED*****************************************
    [ ] Proceed with sprint ticket*****************************************
    [ ] Update the backlog of tasks****************************************
    [ ] Plan a release*****************************************************
    [ ] Follow up on my PRs************************************************
	[ ] Review PRs on which I am a reviewer********************************
	[ ] Proceed with noted tasks*******************************************
	[ ] Automation*********************************************************
	[ ] Follow up emails***************************************************
	[ ] Read useless emails************************************************
	[ ] Sometimes List*****************************************************
)

DeployToProdChecklist =
(

[ ] DEPLOYMENT TO PRODUCTION
	[ ] Proceed with PRE-DEPLOYMENT TASKS procedure
	[ ] Proceed with PRE-DEPLOYMENT RELEASE VALIDATION procedure
	[ ] Every time the graph is checked, communicate with the team
	[ ] Before every attempt of deployment make sure QA is available
	[ ] Before every attempt of deployment inform team
	[ ] At every hiccup, inform the team
	[ ] Communicate with team when deployment is live
	[ ] proceed with DEPLOY LOCKED RELEASE procedure
	[ ] Proceed with POST-DEPLOYMENT procedure
	[ ] proceed with DEPLOYMENT FINALIZATION procedure
	[ ] Update this procedure
	[ ] Update this template
)

PostDeploymentChecklist =
(

[ ] POST-DEPLOYMENT
	[ ] Run deploy command
    [ ] Change status of fixVersion
	[ ] Set release date of fixVersion
	[ ] Ask QA to check core checklist
	[ ] Verify Code Diff Quickly and proceed with BAD CODE ON PROD procedure if necessary
	[ ] Check the graphs
	[ ] Update this procedure

[ ] DEPLOYMENT FINALIZATION
	[ ] Wait for QA's approval of the core checklist
	[ ] MANUAL | Merge Rebase Release In Master
	[ ] ----Delete all branches of old tickets---- NO ! *
	[ ] MANUAL/NON-SCRIPTED | remove release from script
	[ ] MANUAL/SEMI-SCRIPTED | Run update release branches script
	[ ] force FixVersion in postdeployment script | php public/console.php PostDeployment -f release/19.09.1-wr-bansky
	[ ] force FixVersion in deploy script
	[ ] MANUAL | open every PR in stash to see if there are conflicts and open a conflict ticket as a subtask to the ticket that caused the crash
	[ ] Run postdeployment deployment script
	[ ] Run AnalyzePullRequests deployment script
	[ ] Check the graph
	[ ] Setup monocle stage-reservation for stage
	[ ] Convert conflict tickets in subtask of proper ticket in release
	[ ] Set an affect Version for conflict ticket
	[ ] Change the assignee of the conflict tickets to the parent task' assignee
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
	[ ] MANUAL/SCRIPT-IN-PROGRESS | Foreach ticket assign a fixVersion
	[ ] Foreach ticket assign a fixVersion
	[ ] proceed with AUTODEPLOY RELEASE procedure if necessary
	[ ] Go back to ISSUE MITIGATION procedure
	[ ] MANUAL/SCRIPT-IN-PROGRESS | Foreach PR set destination to release branch
	[ ] Prepare the order of merging. Big tickets first, then small. Reducing conflict resolution volume
	[ ] Procedure | Foreach ticket MERGE PR
	[ ] If conflicts | wait until conflicts are resolved before proceeding
	[ ] proceed with DEPLOY LOCKED RELEASE procedure
	[ ] proceed with POST-DEPLOYMENT procedure
	[ ] if QA approve core checklist proceed with DEPLOYMENT FINALIZATION procedure *
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
	[ ] Check in monocle
	[ ] Update Procedure
[ ] PREVIOUSLY MERGED CODE CHECK
    [ ] On diff between release branch and master - Check commits , make sure all tickets are in the fixVersion
    [ ] On un-merged ticket branches - Check if commits exist on multiple branches
    [ ] On un-merged ticket branches - Check if commits from other tickets are in the branch
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
	[ ] use deployment ticket number in branch name - scripts don't take that into account
	[ ] Use template to generate fixVersion name matching naming convention
	[ ] MANUAL/SCRIPTED | Create/Set FixVersion Name
	[ ] MANUAL/SCRIPTED | Set FixVersion Description
	[ ] MANUAL/SCRIPTED | Create a branch from master matching release name
	[ ] MANUAL/SCRIPTED | Create/Edit a deployment ticket for release
	[ ] SCRIPT | Set parameters for createRelease command
	[ ] SCRIPT | Execute createRelease command
	[ ] SCRIPT | Execute postReleaseCreation command
	[ ] SCRIPT | Execute PostDeploymentConflictManagement command
	[ ] MANUAL/NON-SCRIPTED | Add start date to fixVersion
	[ ] MANUAL/NON-SCRIPTED | Prioratize fixVersion in the release management board
	[ ] Add the fixVersion name to the "update branches script"
	[ ] Update Procedure
	[ ] Update template
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
    [ ] Replace fixVersion in JQL in template and run it
    [ ] proceed with NON BLOCKER procedure if necessary
    [ ] Ensure release branch is up to date with master
    [ ] Ensure release branch is up to date with branch currently deployed to production environment
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

[ ] AUTODEPLOY RELEASE
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
	[ ] pre-deploy Command to run
	[ ] Deploy
	[ ] Confirm that deployment is live
	[ ] post-deploy Command to run
	[ ] Update this procedure
)

DeployHotfixToProdChecklist  =
(

[ ] HOTFIX LEVEL A
 	[ ] DEBUG AND FIX ON PRODUCTION ENVIRONMENT
 	[ ] BYPASS BAMBOO USE SFTP TO PUSH CODE
 	[ ] STABALIZE SYSTEM
 	[ ] PROCEED WITH LEVEL C

 [ ] HOTFIX LEVEL B
 	[ ] DELEGATE COMMUNICATION & TICKET MANAGEMENT
 	[ ] DEBUG AND FIX ON PRODUCTION ENVIRONMENT
 	[ ] BYPASS BAMBOO USE SFTP TO PUSH CODE
 	[ ] STABALIZE SYSTEMS DOWN
 	[ ] PROCEED WITH LEVEL C PROCEDURE

 [ ] HOTFIX LEVEL C
 	[ ] Explain the bug to a QA
 	[ ] Reproduce the bug with QA
 	[ ] Create an empty ticket
 	[ ] Ask QA to fill in the details
 	[ ] Communicate to team about the bug
 	[ ] Communicate to 3rd parties affected
 	[ ] Branch off master with ticket number
 	[ ] commit fix with ticket number
 	[ ] Create build in Bamboo
 	[ ] Bugfix on stage if necessary
 	[ ] Deploy with bamboo
 	[ ] Communicate to team about deployment
 	[ ] Test hotfix on prod
 	[ ] Create hf fixversion and release
 	[ ] Validate hotfix flags in ticket
 	[ ] Change status of fixVersion
	[ ] Set release date of fixVersion
 	[ ] Merge into master without peer reviewing
 	[ ] Update all release branches
    [ ] Delete all branches of old tickets
    [ ] force FixVersion in deploy script
    [ ] force FixVersion in postdeployment script
    [ ] Run postdeployment deployment script
    [ ] Run AnalyzePullRequests deployment script
    [ ] Convert conflict tickets in subtask of proper ticket in release
    [ ] Set an affect Version for conflict ticket
    [ ] Change the assignee of the conflict tickets to the parent task' assignee
	[ ] Look at the graphs
 	[ ] Fill in the template
 	[ ] put notes in ticket
 	[ ] Send email to PM
 	[ ] Update this procedure
 	[ ] Update the template
)

ReleaseSetupTemplate =
    (

-------------RELEASE SETUP------------------------------------------
h1. fixVersion Information
|fixVersionID| |
|fixVersionName| |
|Type:||

h2. Attributes
||Attribute||Value||Validated on||Goal Value||
|Owner:| | | |
|Hotfix:| | | |
|Accountable:| | | |
|Schedule:| | | |
|Sprint:| | |Sprinted|
|Branch:| | |Branched|
|State:|  | |Clean|
|Plan:|  | |Technical AND Business|
|Lock:| | |Locked|
|Stage:|  | |Staged|
|Status:|  | |Ready for QA|
h2. Attributes Details
||Attribute||Details||Change||Time of change||
|Type|  | | |
|Scheduled:|  | | |
|Sprint:|  | | |
|Branch|  | | |
h2. Next Actions in Order:
||Role||Action||Status||Date completed||
|Team planner| |  | |
|BuildMaster|Classify FixVersion|  | |
|Build Master|Name the fixVersion|  | |
|Build Master|Determine State of Release|  | |
|BE & FE|Complete all development|  | |
|BE, FE, QA| |  | |
|Build Master|Determine State of Release|  | |
|Build Master|Lock the release|  | |
|Developer|Merge all PRs in release branch|  | |
|Build Master|Stage release|  | |
|QA|Test on stage|in progress| |
h2. Other info
||what ?||value||date updated||
|MS Teams convos| | |
|Tickets| | |
    )

FindReleaseNameTemplate =
(

----FIND RELEASE NAME--------------------------------
Suffix:
		rr          Regular/Blanket
		sa          Standalone
		osa:		Obvious
		ftsa:		Feature
		fxsa		Flexible
		ocsa		Oncall
		tcsa		Technical
		hf          Hotfix
		nd          NonDeployable (Release Planning In Progress)

prefix:
    release/
    hotfix/

Release name:
	[prefix]/[yy].[m].[wom]-[suffix]-[cool name]

)

DeployToProdTemplate =
(


-------------DEPLOY TO PROD----------------------------
TIMESTAMP:
    [TIMESTAMP]

RELEASE INFORMATION:
    [NAME | LINK]

EPIC LINKS:
	[NAME | LINK]

RELEASE TICKET:
	[LINK]

PARTIES:
    REPORTERS:

	DEVS:

	TESTERS:

Core checklist:
	[ ] Sign In
	[ ] Videos Play
	[ ] Ads work
	[ ] PreRolls
	[ ] DMCA
	[ ] Pagination
	[ ] Search
	[ ] Mobile Popunders
	[ ] VPN test Mobile & PC

JQL TEMPLATES:
	Blocked by
	FF-depends on
	FS-depends on
	is fixed by
	SF-depends on
	SS-depends on

STAGE:
`(
   `(
        `(
            issueFunction IN linkedIssuesOf`(
                    "fixVersion = '[RELEASE NAME]' AND `(labels IS EMPTY  OR labels NOT  IN `('ddr','deployment'`) `)",
                    "Blocked by"
                `)
             OR issueFunction IN linkedIssuesOf`(
                    "fixVersion = '[RELEASE NAME]' AND `(labels IS EMPTY  OR labels NOT  IN `('ddr','deployment'`) `)",
                    "FF-depends on"
                `)
             OR issueFunction IN linkedIssuesOf`(
                    "fixVersion = '[RELEASE NAME]' AND `(labels IS EMPTY  OR labels NOT  IN `('ddr','deployment'`) `)",
                    "FS-depends on"
                `)
             OR issueFunction IN linkedIssuesOf`(
                    "fixVersion = '[RELEASE NAME]' AND `(labels IS EMPTY  OR labels NOT  IN `('ddr','deployment'`) `)",
                    "is fixed by"
                `)
             OR issueFunction IN linkedIssuesOf`(
                    "fixVersion = '[RELEASE NAME]' AND `(labels IS EMPTY  OR labels NOT  IN `('ddr','deployment'`) `)",
                    "SF-depends on"
                `)
             OR issueFunction IN linkedIssuesOf`(
                    "fixVersion = '[RELEASE NAME]' AND `(labels IS EMPTY  OR labels NOT  IN `('ddr','deployment'`) `)",
                    "SS-depends on"
                `)
             OR issueFunction IN subtasksOf`(
                    "fixVersion = '[RELEASE NAME]' AND `(labels IS EMPTY  OR labels NOT  IN `('ddr','deployment'`) `) AND status NOT IN `(open`)"
                    `)
        `) AND STATUS NOT IN `(CLOSED`) AND `(fixVersion IS EMPTY or fixVersion NOT IN`('[RELEASE NAME]'`)`)
   `) OR `(
                issuefunction NOT IN
                    hasLinkType`('Fixed by'`)
                    AND fixVersion = '[RELEASE NAME]'
                    AND devstatus.customfield.development.name[commits].all < 1
                    AND STATUS NOT IN `("in progress","BLOCKED","open"`)
                    AND issueFunction not in parentsOf`('status not in `(closed`)'`)
    `) OR `(
            fixVersion = '[RELEASE NAME]' AND labels IN `(
                'inform_stakeholder',
                'deploy-tasks',
                'command-to-run',
                'deploy-task'
          `)
   `) OR `(
            issueFunction IN subtasksOf`(
                "fixVersion = '[RELEASE NAME]'
                AND devstatus.customfield.development.name[commits].all > 0
                AND `(labels IS EMPTY  OR labels NOT  IN `('ddr','deployment'`) `) AND STATUS NOT IN `('open','under review','in progress'`)"
            `) AND devstatus.customfield.development.name[commits].all > 0
       `)
`) AND `(labels NOT IN `(deployment,DDR`) OR labels IS EMPTY`)

PROD:
`(
	`(
        `(
            issueFunction IN linkedIssuesOf`(
                    "fixVersion = '[RELEASE NAME]' AND `(labels IS EMPTY  OR labels NOT  IN `('ddr','deployment'`) `)",
                    "Blocked by"
                `)
             OR issueFunction IN linkedIssuesOf`(
                    "fixVersion = '[RELEASE NAME]' AND `(labels IS EMPTY  OR labels NOT  IN `('ddr','deployment'`) `)",
                    "FF-depends on"
                `)
             OR issueFunction IN linkedIssuesOf`(
                    "fixVersion = '[RELEASE NAME]' AND `(labels IS EMPTY  OR labels NOT  IN `('ddr','deployment'`) `)",
                    "FS-depends on"
                `)
             OR issueFunction IN linkedIssuesOf`(
                    "fixVersion = '[RELEASE NAME]' AND `(labels IS EMPTY  OR labels NOT  IN `('ddr','deployment'`) `)",
                    "is fixed by"
                `)
             OR issueFunction IN linkedIssuesOf`(
                    "fixVersion = '[RELEASE NAME]' AND `(labels IS EMPTY  OR labels NOT  IN `('ddr','deployment'`) `)",
                    "SF-depends on"
                `)
             OR issueFunction IN linkedIssuesOf`(
                    "fixVersion = '[RELEASE NAME]' AND `(labels IS EMPTY  OR labels NOT  IN `('ddr','deployment'`) `)",
                    "SS-depends on"
                `)
             OR issueFunction IN subtasksOf`(
                    "fixVersion = '[RELEASE NAME]' AND `(labels IS EMPTY  OR labels NOT  IN `('ddr','deployment'`) `)"
                    `)
        `) AND STATUS NOT IN `(CLOSED`)
	`) OR `(
                issuefunction NOT IN
                    hasLinkType`('Fixed by'`)
                    AND fixVersion = '[RELEASE NAME]'
                    AND devstatus.customfield.development.name[commits].all < 1
                    AND STATUS NOT IN `("in progress","BLOCKED"`)
                    AND issueFunction not in parentsOf`('status not in `(closed`)'`)
    `) OR `(
            fixVersion = '[RELEASE NAME]' AND labels IN `(
                'inform_stakeholder',
                'deploy-tasks',
                'command-to-run',
                'deploy-task'
		    `)
	`) OR `(
            issueFunction IN subtasksOf`(
                "fixVersion = '[RELEASE NAME]'
                AND devstatus.customfield.development.name[commits].all > 0
                AND `(labels IS EMPTY  OR labels NOT  IN `('ddr','deployment'`) `)"
            `) AND devstatus.customfield.development.name[commits].all > 0
	    `)
`) AND `(labels NOT IN `(deployment,DDR`) OR labels IS EMPTY`)


Things to address:
)

DeployHotfixToProdTemplate =
(

------HOTFIX LEVEL A PRE REQUESITS---------------------
	[ ] Site is down for all users no feature is accessible
	[ ] Informing team is not required
------HOTFIX LEVEL B PRE REQUESITS---------------------
	[ ] Videos are not playable for most users
	[ ] Team should be informed ASAP
------HOTFIX LEVEL C PRE REQUESITS---------------------
	[ ] Team must be informed before proceeding
    [ ] Production environment is behind master and preventing deployments
    [ ] One of the pillers of tube's site is down
		[ ] ads
		[ ] search
		[ ] sign in
		[ ] upload
		[ ] video plays

PARTIES:
	REPORTERS:
		[PARTY]
    INFORMED:
        [INFORMED PARTY]
    TESTING:
        [PARTY]
	DEVELOPERS:
		[PARTY]

LIST OF TICKETS:
	[LIST][TICKETS]

HOTFIX FIXVERSION NAME:
	[FIXVERSION NAME | URL]

RELEASE TICKET
	[URL]
MS TEAMS:
    [URL]
)

    return

::prdaily::
    gosub DefineProcedureconstants
    Clipboard := DailyProcedureChecklist
    SendInput ^v
    return

::prdpprch::
    gosub DefineProcedureconstants
    Clipboard := DeployToProdChecklist . PreDeploymentTasksChecklist . PreDeploymentReleaseValidationChecklist . DeployLockedReleaseChecklist . PostDeploymentChecklist
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

::prdphfprch::
    gosub DefineProcedureconstants
    Clipboard := DeployHotfixToProdChecklist . FindReleaseNameChecklist . MergePRChecklist . DeployHotfixToProdTemplate
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
