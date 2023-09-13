*** Variables ***
#task 3
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
${signin}       //button[@type='submit']//div[@class='button-content']

#task4
${timesheet}        //a[@href='/time-sheet']
${addtask}          //div[contains(text(),'Add Task')]
${calendar}         //input[@id='basic_dates']
${select_start_date}      //td[@title='2023-09-04']//div[@class='ant-picker-cell-inner'][normalize-space()='4']
${select_end_date}          //td[@title='2023-09-08']//div[@class='ant-picker-cell-inner'][normalize-space()='8']
${select_start_time}        //div[1]/div/div/div[2]/div/div/div/div/span[2]
${select_start_time1}       //div[@class='ant-select-item-option-content'][normalize-space()='9:00 am']
${select_end_time}          //div[2]/div/div/div[2]/div/div/div/div/span[2]
${select_end_time1}         //div[@class='ant-select-item-option-content'][normalize-space()='6:00 pm']
${select_project}           //*[@id="basic_tasks_0_projectId"]
${select_project_name}      //div[contains(text(),'Rampup_Software Services - Terralogic')]
${task_name}                //*[@id="basic_tasks_0_taskName"]
${description}              //*[@id="basic_tasks_0_notes"]
${description__1}           //textarea[@id='basic_notes']
${edit}                     //div[6]/div/img[1]
${submit}                   //button[@type='submit']
${update}                   //button[@type='submit']
${delete}                   //div[6]/div/img[3]
${delete_1}                 //button[@type='submit']
${forward}                   //button[2]//div[1]//div[1]//div[1]//img[1]

${weekly_update}            //div[1]/div[1]/label[2]
${delete_daily}             //div[1]/div[1]/label[1]
