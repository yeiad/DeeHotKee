DefineProcedureconstants:
    AseeFee =
    (
[ ] DAILY PROCEDURE ***************************************************
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
    [ ] Go through the sometimes checklist*********************************
    - -----------------------------------------------------
    [ ] Weekday PROCEDURE**************************************************
    [ ] Update procedure***************************************************
    [ ] *******************************************************************

)
    return

::prdaily::
    gosub DefineProcedureconstants
    Clipboard := AseeFee
    SendInput ^v
    return
