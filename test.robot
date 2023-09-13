*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}      chrome
${url}          https://terralogic.paxanimi.ai/login
${username}     //input[@id='basic_userEmail']
${password}     //input[@id='basic_password']
${search}       //*[@id="root"]/div/div[1]/section/div[2]/header[2]/div/div[2]/div[1]
${quicklinks}   //*[@id="root"]/div/div[1]/section/div[2]/header[2]/div/div[2]/div[2]
${link1}        //*[@id="root"]/div/div[1]/section/div[2]/header[2]/div/div[2]/div[6]/div/div/ul/li[1]/span/div
${link2}        //*[@id="root"]/div/div[1]/section/div[2]/header[2]/div/div[2]/div[6]/div/div/ul/li[2]/span/div
${link3}        //*[@id="root"]/div/div[1]/section/div[2]/header[2]/div/div[2]/div[6]/div/div/ul/li[3]/span/div
${link4}        //*[@id="root"]/div/div[1]/section/div[2]/header[2]/div/div[2]/div[6]/div/div/ul/li[4]/span/div
${link5}        //*[@id="root"]/div/div[1]/section/div[2]/header[2]/div/div[2]/div[6]/div/div/ul/li[5]/span/div
${link6}        //*[@id="root"]/div/div[1]/section/div[2]/header[2]/div/div[2]/div[6]/div/div/ul/li[6]/span/div
${notification}     //*[@id="root"]/div/div[1]/section/div[2]/header[2]/div/div[2]/div[3]
${theme}            //*[@id="root"]/div/div[1]/section/div[2]/header[2]/div/div[2]/div[4]
${select_theme}     //span[normalize-space()='Dark']
${select_color}     //div[2]/div/div[2]/div/div[2]/div[2]/div/div[2]/div/div[9]
${exit_theme}       //div[2]/div/div[2]/div/div[2]/button
${country}          //*[@id="root"]/div/div[1]/section/div[2]/header[2]/div/div[2]/div[5]
${select_country}   //li/ul/li[4]
${profile}          //*[@id="root"]/div/div[1]/section/div[2]/header[2]/div/div[2]/span
${select_profile}      //div[contains(text(),'View profile')]
${back_to_home}         //img[@src='/assets/menuIcons/home.svg']
${directory}            //img[@src='/assets/menuIcons/directory.svg']
${hover}            //*[@id="621733b38de1b80080d8ee3b"]
${icons_hover1}      //div[2]/div/div/div/div[5]/div[2]/a[1]/img
${icons_hover2}     //div[2]/div/div/div/div[5]/div[2]/a[2]/img
${icons_hover3}     //div[2]/div/div/div/div[5]/div[2]/img
${timesheet}        //a[@href='/time-sheet']
${addtask}          //div[contains(text(),'Add Task')]
${calendar}         //input[@id='basic_dates']
${select_start_date}      //td[@title='2023-09-04']//div[@class='ant-picker-cell-inner'][normalize-space()='4']
${select_end_date}          //td[@title='2023-09-04']//div[@class='ant-picker-cell-inner'][normalize-space()='4']
${select_start_time}        //div[1]/div/div/div[2]/div/div/div/div/span[2]
${select_start_time1}       //div[@class='ant-select-item-option-content'][normalize-space()='9:00 am']
${select_end_time}          //div[2]/div/div/div[2]/div/div/div/div/span[2]
${select_end_time1}         //div[@class='ant-select-item-option-content'][normalize-space()='6:00 pm']
${select_project}           //*[@id="basic_tasks_0_projectId"]
${select_project_name}      //div[contains(text(),'Rampup_Software Services - Terralogic')]
${task_name}                //*[@id="basic_tasks_0_taskName"]
${description}              //*[@id="basic_tasks_0_notes"]
${submit}                   //button[@type='submit']
${description__1}           //textarea[@id='basic_notes']
${edit}                     //div[6]/div/img[1]
${update}                   //button[@type='submit']
${delete}                   //div[6]/div/img[3]
${delete_1}                 //button[@type='submit']
${forward}                   //button[2]//div[1]//div[1]//div[1]//img[1]
${weekly_update}            //div[@class='label']//span[contains(text(),'Weekly')]
${delete_daily}             //div[1]/div[1]/label[1]


${username_value}     spandana.sy@terralogic.com
${password_value}     Spandana@123
${signin}       //button[@type='submit']//div[@class='button-content']
${task_name_value}  Robot framework
${description_value}    Valuating Test
${description_value1}    cases
*** Keywords ***
Automate HR-OS Login Page
    OPEN BROWSER    ${url}      ${browser}
    maximize browser window
    input text     ${username}      ${username_value}
    input text    ${password}       ${password_value}
    click element    ${signin}
    sleep    10s
Time Sheet for a week on Dialy basis
    Wait Until Element Is Visible   ${timesheet}
    Click Element   ${timesheet}
    sleep   2s
    sleep    5s
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
    Sleep   5s
    click element    ${delete_daily}
    sleep    5s
Top menu of HR-OS Home Page
    Wait Until Element Is Visible   ${search}
    mouse over    ${search}
    sleep    5s
    click element    ${quicklinks}
    sleep    5s
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
    sleep    5s
    mouse over    ${icons_hover2}
    sleep    5s
    mouse over    ${icons_hover3}
    sleep    5s

*** Test Cases ***
TC1
    Automate HR-OS Login Page
    #Top menu of HR-OS Home Page
    #Left menu of HR-OS Home Page
    Time Sheet for a week on Dialy basis