*** Settings ***
Documentation     Test Case 1: Login with Valid Credentials
Library    ScreenCapLibrary
Resource    ../../../Framework/Resources/keywords/perform_actions.robot
*** Test Cases ***
Perform Test case for task 4
    #start video recording       alias=None  name=demo_recording
    Automate HR-OS Login Page
    Time Sheet for a week on Dialy basis
    Time Sheet for a week on Weekly Basis
    #stop video recording    alias=None
    close browser