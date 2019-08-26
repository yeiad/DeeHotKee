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
	[ ] Read useless emails************************************************
    [ ] Follow up emails***************************************************
    [ ] Skim through All mail**********************************************
    [ ] Log missing work in jira*******************************************
    [ ] Save records notes from daily work*********************************
    [ ] Save records notes from templates**********************************
    [ ] Save records notes from script*************************************
    [ ] Save records notes from procedures*********************************
    [ ] Make sure my 'in progress' tickets are actually in progress********
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
	[ ] Not Friday
	[ ] Testers are available for 1h
	[ ] Testers not on lunch
	[ ] QA OK to go
	[ ] BE Devs OK to go
	[ ] 3rd party OK to go
	[ ] Check 'inform_stakeholder' label
	[ ] Open MS Teams Thread
	[ ] Fill Procedure Template
	[ ] Check linked tickets (blocks, fixes)
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
	[ ] Set alarms to check the graphs
	[ ] Check the graphs
	[ ] Communicate with team about graphs
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
	[ ] Change status of fixVersion
	[ ] Set release date of fixVersion
	[ ] remove releases from notepad++
	[ ] remove release from script
	[ ] If Hotfix | write on board
	[ ] Send an email to PM for the deployment
	[ ] Cross releases off the board
	[ ] Erease release off the board
	[ ] Write Deployment Notes For Jira Deployment Ticket on deployment ticket
	[ ] If inform_stakeholder | Inform stakeholder
	[ ] If inform_stakeholder | Remove the label
	[ ] Check the graph
	[ ] Get QA's approval
	[ ] if QA gives approval | Merge deployed branch in master
	[ ] If broken | Revert to last stable build
	[ ] Run update release branches script
	[ ] If there has been multiple releases in the day, forceFixVersion in postdeployment script
	[ ] Run postdeployment deployment script
	[ ] Run AnalyzePullRequests deployment script
	[ ] Note conflicting releases
	[ ] Procedure | Conflict Management
	[ ] Open tickets for conflicts
	[ ] Remove release from tabs outliner
	[ ] Check all task boxes for that deployment in tasks
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
	[ ] Notes | List the people involved
	[ ] List all tickets that should go in that release
	[ ] Ask people involved if there's other PRs that should go in there
	[ ] List tickets that were previously merged
	[ ] Determine priority of release
	[ ] Ensure All tickets are Resolved
	[ ] Procedure | FIND RELEASE NAME
	[ ] Stage | Determine if there's a desired stage
	[ ] Stage | If desired | Check if stage is used
	[ ] Stage | If desired | newly discovered desired stage, note it in jira
	[ ] Stage | If desired | If stage is used proceed with SWAP STAGE procedure
	[ ] Stage | If not desired | Find Available Stage from Jira Release board
	[ ] Stage | If not desired | Ensure availability in Bamboo
	[ ] Stage | If not desired | Name Stage
	[ ] Stage | If not desired | Edit Tabs Outliner Folder to include stage
	[ ] Stage | If not desired | proceed with AUTODEPLOY RELEASE procedure if necessary
	[ ] If previously merged | Put label 'faklfjhafdafh'
	[ ] If previously merged | For each of faklfjhafdafh tickets proceed with TICKET AVOID CONTAMINATION  proceedure
	[ ] If previously merged | If there is faklfjhafdafh tickets proceed with RELEASE AVOID CONTAMINATION procedure
	[ ] Foreach ticket assign a fixVersion
	[ ] If previously merged | Foreach faklfjhafdafh ticket create a PR
	[ ] Stash | Foreach PR change destination
	[ ] Prepare the order of merging. Big tickets first, then small. Reducing conflict resolution volume
	[ ] Procedure | Foreach ticket MERGE PR
	[ ] If conflicts | wait until conflicts are resolved before proceeding
	[ ] Procedure | DEPLOY LOCKED RELEASE TO STAGE
	[ ] MS Teams | Send a communication to Releases & Deployments according to template
	[ ] Save the link for communication
	[ ] Stash | Create PR to master
	[ ] Procedure | update

)

FindReleaseNameChecklist =
(
[ ] FIND RELEASE NAME
	[ ] Open templates for procedure
	[ ] Create identifier
	[ ] Create suffix
	[ ] Create label
	[ ] Create fixversion with fixVersion name
	[ ] Prioratize fixversion
	[ ] Create a release ticket
	[ ] Create a branch with fixVersion name
	[ ] Add fixVersion to update branches script
	[ ] Add release to whiteboard
	[ ] Update Procedure

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
Title: [Release Name]
People Involved: [List][People Involved]
Stage: [Environment Number]
MS Teams Thread: [MS Teams Link]

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

ENVOLVED PARTY:
	[LIST OF ENVOLVED PEOPLE]

TESTING PARTY:
	[LIST OF TESTING PEOPLE]

DEPLOYMENT TICKET:
	[JIRA TICKET FOR DEPLOYMENT]

MS TEAMS CONVERSATION:
    [TEAMS.MICROSOFT.COM URL]

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
