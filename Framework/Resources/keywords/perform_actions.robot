*** Settings ***
Library    SeleniumLibrary
Resource    ../../../Framework/Resources/pageobjects/all_paths.robot
Resource    ../../../Framework/Resources/variables/common_variables.robot
Resource    ../../../Framework/Resources/variables/used_variables.robot
*** Keywords ***
Automate HR-OS Login Page
    OPEN BROWSER    ${url}      ${browser}
    maximize browser window
    input text     ${username}      ${username_value}
    input text    ${password}       ${password_value}
    click element    ${signin}
    sleep    10s
Top menu of HR-OS Home Page
    Wait Until Element Is Visible   ${search}
    mouse over    ${search}
    sleep    5s
    click element    ${quicklinks}
    sleep    5s
    Wait Until Element Is Visible   ${link1}
    mouse over    ${link1}
    mouse over    ${link2}
    mouse over    ${link3}
    mouse over    ${link4}
    mouse over    ${link5}
    mouse over    ${link6}
    sleep    1s
    mouse over    ${notification}
    sleep    1s
    click element    ${theme}
    sleep    1s
    click element    ${select_theme}
    Sleep   1s
    click element    ${select_color}
    sleep    1s
    click element    ${exit_theme}
    sleep    1s
    click element    ${country}
    sleep    1s
    click element    ${select_country}
    sleep    10s
    click element    ${profile}
    sleep    1s
    click element    ${select_profile}
    sleep    2s
    Execute JavaScript    window.scrollTo(0, 1200)
    sleep    5s
Left menu of HR-OS Home Page
    click element    ${back_to_home}
    sleep    1s
    click element    ${directory}
    sleep    5s
    Wait Until Element Is Visible       ${hover}
    mouse over      ${hover}
    sleep    5s
    mouse over    ${icons_hover1}
    sleep    2s
    mouse over    ${icons_hover2}
    sleep    2s
    mouse over    ${icons_hover3}
    sleep    2s
Time Sheet for a week on Dialy basis
   Wait Until Element Is Visible   ${timesheet}
   Click Element   ${timesheet}
   sleep   2s
   sleep    5s
   Wait Until Element Is Visible   ${addtask}
   Click Element   ${addtask}
   Sleep   2s
   Press Keys   ${select_start_time}    9:00 am
   Sleep   2s
   Click Element   ${select_start_time1}
   Sleep   2s
   Press Keys   ${select_end_time}    6:00 pm
   Sleep   2s
   Click Element   ${select_end_time1}
   Sleep   2s
   Press Keys   ${select_project}    Rampup_Software Services
   Sleep   2s
   Click Element   ${select_project_name}
   Sleep   2s
   Input Text   ${task_name}    ${task_name_value}
   Sleep   2s
   Input Text   ${description}    ${description_value}
   Sleep   2s
   Click Element   ${submit}
   Sleep   10s
   Wait Until Element Is Visible  ${edit}
   click element    ${edit}
   sleep    10s
   input text    ${description__1}     ${description_value1}
   sleep    2s
   click element    ${update}
   sleep    10s
   click element    ${delete}
   sleep    2s
   click element    ${delete_1}
   sleep    7s
   click element    ${forward}
   sleep    10s
   FOR    ${day}    IN RANGE    4
        Wait Until Element Is Visible   ${addtask}
        Click Element   ${addtask}
        Sleep   2s
        Press Keys   ${select_start_time}    9:00 am
        Sleep   2s
        Click Element   ${select_start_time1}
        Sleep   2s
        Press Keys   ${select_end_time}    6:00 pm
        Sleep   2s
        Click Element   ${select_end_time1}
        Sleep   2s
        Press Keys   ${select_project}    Rampup_Software Services
        Sleep   2s
        Click Element   ${select_project_name}
        sleep   2s
        Input Text   ${task_name}    ${task_name_value}
        Sleep   2s
        Input Text   ${description}    ${description_value}
        Sleep   2s
        Click Element   ${submit}
        Sleep   7s
        click element    ${delete}
        sleep    2s
        click element    ${delete_1}
        sleep    7s
        click element    ${forward}
        sleep    5s
   END


Time Sheet for a week on Weekly Basis
    sleep    5s
    Wait Until Element Is Visible   ${weekly_update}
    click element    ${weekly_update}
    sleep    2s
    Wait Until Element Is Visible   ${addtask}
    Click Element   ${addtask}
    Sleep   2s
    Click Element   ${calendar}
    Sleep   2s
    Click Element   ${select_start_date}
    Sleep   2s
    Click Element   ${select_end_date}
    Sleep   2s
    Press Keys   ${select_start_time}    9:00 am
    Sleep   2s
    Click Element   ${select_start_time1}
    Sleep   2s
    Press Keys   ${select_end_time}    6:00 pm
    Sleep   2s
    Click Element   ${select_end_time1}
    Sleep   2s
    Press Keys   ${select_project}    Rampup_Software Services
    Sleep   2s
    Click Element   ${select_project_name}
    Sleep   2s
    Input Text   ${task_name}    ${task_name_value}
    Sleep   2s
    Input Text   ${description}    ${description_value}
    Sleep   2s
    Click Element   ${submit}
    sleep    5s