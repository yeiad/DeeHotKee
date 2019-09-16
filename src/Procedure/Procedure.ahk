DefineProcedureconstants:
    DailyProcedureChecklist =
    (
[ ] DAILY PROCEDURE
    [ ] Look at calendar for appointments for the day and the week*********
    [ ] Read what was done yesterday***************************************
    [ ] Carryover backlog of uncompleted tasks to today********************
    [ ] Update the backlog of tasks****************************************
    [ ] Read unread emails*************************************************
	[ ] Read useless emails************************************************
    [ ] Follow up emails***************************************************
    [ ] Skim through All mail**********************************************
	[ ] Go through DayForce messages***************************************
    [ ] Log missing work in jira*******************************************
	[ ] Save records from daily notes**************************************
	[ ] Save records from daily timelogs***********************************
	[ ] Save records from daily mistakes***********************************
	[ ] Save records from daily filled templates***************************
	[ ] Save records from daily filled procedures**************************
    [ ] Save records from daily script results*****************************
    [ ] Make sure my 'in progress' tickets are actually in progress********
    [ ] Read communication on teams
        ******************Daily Deployment Tasks***************************
    [ ] Update all unreleased releases with master*************************
    [ ] Execute Deployment scrpts******************************************
    [ ] Open and process Hotfix Jira Filter********************************
    [ ] Follow up on Hotfix Releases***************************************
    [ ] Review 19.Hotfix Release*******************************************
    [ ] Note status of all releasables*************************************
    [ ] Communicate status of releases to team*****************************
    [ ] Add tasks for releases that need action****************************
    - -----------------------------------------------------
    [ ] Review PRs on which I am a reviewer********************************
    [ ] Follow up on my PRs************************************************
    - -----------------------------------------------------
    [ ] Weekday PROCEDURE**************************************************
    [ ] Update procedure***************************************************

)
DeployToProdChecklist =
(

[ ] DEPLOYMENT TO PRODUCTION
	[ ] Not Friday
	[ ] Testers are available for 1h
	[ ] Testers not on lunch
	[ ] QA OK to go
	[ ] BE Devs OK to go
	[ ] 3rd party OK to go
	[ ] Open MS Teams Thread
	[ ] Fill Procedure Template
	[ ] Check linked tickets (blocks, fixes)
	[ ] Check 'inform_stakeholder' label
	[ ] check subtasks
	[ ] Investigate tickets with no merged code in the release
	[ ] Ensure all tickets are 'verified'
	[ ] Compare diff master to release
	[ ] Compare diff currently deployed branch to release
	[ ] If Diff | Update branch with master and currently deployed branch
	[ ] Check Deploy tasks, Command to run etc
	[ ] If it's a hotfix | Createa a bamboo build
	[ ] If Deploy tasks | Run Pre-Deployment Commands to run
	[ ] Inform team I'm about to deploy
	[ ] Before every attempt of deployment make sure QA is available
	[ ] Attempt a deployment
	[ ] If json feed is created | set an alarm to check when the deployment gets live
	[ ] If deployment fails | try again in 10 minutes
	[ ] Confirm that deployment is live
	[ ] Communicate with team when deployment is live
	[ ] Ask QA to check Sign In, Videos Play, Ads work, PreRolls, DMCA, Pagination, Search, Mobile Popunders
	[ ] If Deploy tasks | Post-deploy Command to run
	[ ] Check the graphs
	[ ] Communicate with team about graphs
	[ ] Verify Code Diff Quickly
	[ ] If code issues proceed with BAD CODE ON PROD procedure
	[ ] Update tickets status to deployed
	[ ] Change status of fixVersion
	[ ] Set release date of fixVersion
	[ ] remove release from script
	[ ] Send an email to PM for the deployment
	[ ] Cross releases off the board
	[ ] Erease release off the board
	[ ] Write Deployment Notes For Jira Deployment Ticket on deployment ticket
	[ ] Check the graph
	[ ] Get QA's approval
	[ ] Merge Release In Master IF APPROVED
	[ ] Run update release branches script
	[ ] forceFixVersion in postdeployment script
	[ ] Run postdeployment deployment script
	[ ] Run AnalyzePullRequests deployment script
	[ ] Update templates for this procedure
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
	[ ] Check Authors of commits
	[ ] Check if there are approvers for those authors
	[ ] Note PR as lacking appropriate approvers
	[ ] Add missing approvers
	[ ] If missing approvers, set jira status to 'under review'
	[ ] If missing approvers, leave comment '[AUTO COMMENT] Missing approvers for some of the code'
	[ ] If there are missing approvers stop procedure
	[ ] Check if approvals are resolving
	[ ] If approvals aren't resolving stop procedure
	[ ] Open Jira ticket
	[ ] Check fixVersion
	[ ] Check if fixVersion is unreleased
	[ ] Validate that the unreleased fixversion matches destination branch
	[ ] Change PR destination branch if fixVersion doesn't match
	[ ] Stop procedure if PR destination doesn't match
	[ ] Check 'fixes' links
	[ ] Check 'FS-depended by' links
	[ ] Ensure status is 'resolved'
	[ ] Ensure ticket linked are 'resolved' if they are fixed by this ticket
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
	[ ] Procedure | DEPLOY LOCKED RELEASE TO STAGE
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
	[ ] Create a fixVersion in Jira
	[ ] Add start date to fixVersion
	[ ] Prioratize fixVersion in the release management board
	[ ] Create a branch from master with a name identical to the fixVersion name
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
	[ ] If Deploy tasks | Execute pre-deployment tasks
	[ ] Ensure Testers are available before every deployment attempt
	[ ] Inform team via the Thread that Deployment is about to take place
	[ ] Inform team via the Thread of any hiccups during deployment
	[ ] Attempt a deployment
	[ ] Ensure the deployment is live
	[ ] Inform team via the Thread that the deployment is live
	[ ] Ask QA to proceed with quick checks: Sign In, Videos Play, Ads work, PreRolls, DMCA, Pagination, Search, Mobile Popunders
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
[ ] PRE-DEPLOYMENT RELEASE VALIDATION
	[ ] Ensure absence of bogus commits
	[ ] Ensure depending on tickets are done
	[ ] Ensure subtasks are done
	[ ] Ensure there are no tickets with no merged code
	[ ] Ensure all tickets are verified
	[ ] Ensure QA has done basic validation of release
	[ ] Ensure release branch is up to date with master
	[ ] Ensure release branch is up to date with branch currently deployed to production environment
[ ] DEPLOYMENT NOTICES VALIDATION
	[ ] Check 'inform_stakeholder' label
	[ ] Check 'deploy-tasks' label
	[ ] Check 'command-to-run' label
	[ ] Check 'deploy-task' label
[ ] POST-DEPLOYMENT CHECKS
	[ ] If inform_stakeholder | Inform stakeholder
	[ ] If inform_stakeholder | Remove the label

)

EssentialReleaseCreationChecklist =
(

[ ] RELEASE SETUP - ESSENTIAL
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
	[ ] Jira | check if it's a Hotfix
	[ ] Jira | check Linked tickets
	[ ] Jira | Check Subtasks
	[ ] Stash | Refresh Stash page
	[ ] Stash | Check destination branch
	[ ] Stash | Check commit messages
	[ ] Stash | Check code if it's FE/BE
	[ ] Stash | Check approvers
	[ ] Stash | Change Destination Branch
	[ ] Stash | if conflict | Procedure | CONFLICT PR
	[ ] Stash | Merge PR
	[ ] Jira | Set fixVersion
	[ ] Procedure | CONFLICT MANAGEMENT
	[ ] Procedure | Update this

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

DeployLockedReleaseToStageChecklist =
(
[ ] DEPLOY LOCKED RELEASE TO STAGE  -------------------------------------------------------
	[ ] Ensure all tickets are 'resolved'
	[ ] Ensure all PRs are merged in the release
	[ ] Check Deploy tasks, Command to run etc
	[ ] pre-deploy Command to run:
	[ ] Deploy
	[ ] post-deploy Command to run
	[ ] Jira | Update tickets status to ON STAGE
	[ ] Procedure | Update

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

INVOLVED PARTY:
	[LIST OF ENVOLVED PEOPLE]

TESTING PARTY:
	[LIST OF TESTING PEOPLE]

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

DeployHotfixToProdChecklist  =
(

[ ] DEPLOY HOTFIX TICKET STRAIGHT TO PROD
    [ ] Should someone approve the hotfix?
    [ ] What are the differences in procedure between hotfix and regular procedure?
	[ ] Get a list of tickets that will go in hotfix
	[ ] Validate presence of hotfix label
	[ ] Validate presence of hotfix effort type
	[ ] Proceed with PR BASIC CHECK on all tickets
	[ ] proceed with FIND RELEASE NAME
	[ ] create a branch from master
	[ ] Create a release ticket
	[ ] Create a fixVersion that starts with hotfix/
	[ ] Set the fixVersion on the tickets
	[ ] Setup branch in bamboo for hotfix branch
	[ ] Change PR destinations of tickets
	[ ] Proceed with MERGE PR procedure
	[ ] Proceed with DEPLOYMENT TO PRODUCTION procedure
	[ ] Update the procedure

)
    return

::prdaily::
    gosub DefineProcedureconstants
    Clipboard := DailyProcedureChecklist
    SendInput ^v
    return

::prdpprch::
    gosub DefineProcedureconstants
    Clipboard := DeployToProdChecklist
    SendInput ^v
    return

::prdpprte::
    gosub DefineProcedureconstants
        Clipboard := DeployToProdTemplate
        SendInput ^v
        return

::prcrrech::
    gosub DefineProcedureconstants
    Clipboard := CreateABunchOfReleasesChecklist . PRBsicCheckChecklist . ReleaseSetupChecklist . FindReleaseNameChecklist . AutodeployReleaseChecklist . MergePRChecklist . ConflictPRChecklist . ConflictManagementChecklist . DeployLockedReleaseToStageChecklist
    SendInput ^v
    return

::prcrrete::
    gosub DefineProcedureconstants
    Clipboard := ReleaseSetupTemplate . FindReleaseNameTemplate
    SendInput ^v
    return

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
    Clipboard := EssentialDeploymentToProdChecklist
    SendInput ^v
    return
