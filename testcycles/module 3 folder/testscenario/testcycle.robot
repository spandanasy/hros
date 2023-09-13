*** Settings ***
Documentation     Test Case 1: Login with Valid Credentials
Library    ScreenCapLibrary
Resource    ../../../Framework/Resources/keywords/perform_actions.robot
*** Test Cases ***
Perform Test case for task 3
    #start video recording       alias=None  name=demo_recording
    Automate HR-OS Login Page
    Top menu of HR-OS Home Page
    Left menu of HR-OS Home Page
    #stop video recording    alias=None
    close browser