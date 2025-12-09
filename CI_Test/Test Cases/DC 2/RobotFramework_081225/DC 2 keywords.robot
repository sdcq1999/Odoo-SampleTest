*** Settings ***
Documentation    WARNING! This file has been automatically generated using the Conformiq <Robot Framework Scripter> scripting backend. PLEASE DO NOT EDIT.
Library    SeleniumLibrary
Resource          Conformiq RobotFwk Utils library.txt
*** Keywords ***
Home | ConformIQ SmartScanner
    [Arguments]    ${URL FIELD}    
      ${Home | ConformIQ-Home | ConformIQSCREENHome | ConformIQSCREENSign inHYPERLINK_locator}      Load Locator Data    Objects    Home | ConformIQ-Home | ConformIQSCREENHome | ConformIQSCREENSign inHYPERLINK_locator      Locator



    Open Browser		${URL FIELD}
    Wait Until Element Is Visible 		${Home | ConformIQ-Home | ConformIQSCREENHome | ConformIQSCREENSign inHYPERLINK_locator}     5
    Click Element		${Home | ConformIQ-Home | ConformIQSCREENHome | ConformIQSCREENSign inHYPERLINK_locator}     



Login | ConformIQ SmartScanner
    [Arguments]    ${login TEXTBOX}    ${password TEXTBOX}    
      ${Login | ConformIQ-Login | ConformIQSCREENLogin | ConformIQ_FORMFORMloginTEXTBOX_locator}      Load Locator Data    Objects    Login | ConformIQ-Login | ConformIQSCREENLogin | ConformIQ_FORMFORMloginTEXTBOX_locator      Locator
      ${Login | ConformIQ-Login | ConformIQSCREENLogin | ConformIQ_FORMFORMpasswordTEXTBOX_locator}      Load Locator Data    Objects    Login | ConformIQ-Login | ConformIQSCREENLogin | ConformIQ_FORMFORMpasswordTEXTBOX_locator      Locator
      ${Login | ConformIQ-Login | ConformIQSCREENLog inBUTTON_locator}      Load Locator Data    Objects    Login | ConformIQ-Login | ConformIQSCREENLog inBUTTON_locator      Locator



    Wait Until Element Is Visible 		${Login | ConformIQ-Login | ConformIQSCREENLogin | ConformIQ_FORMFORMloginTEXTBOX_locator}     5
    Input Text		${Login | ConformIQ-Login | ConformIQSCREENLogin | ConformIQ_FORMFORMloginTEXTBOX_locator}     ${login TEXTBOX}
    Wait Until Element Is Visible 		${Login | ConformIQ-Login | ConformIQSCREENLogin | ConformIQ_FORMFORMpasswordTEXTBOX_locator}     5
    Input Text		${Login | ConformIQ-Login | ConformIQSCREENLogin | ConformIQ_FORMFORMpasswordTEXTBOX_locator}     ${password TEXTBOX}
    Wait Until Element Is Visible 		${Login | ConformIQ-Login | ConformIQSCREENLog inBUTTON_locator}     5
    Click Element		${Login | ConformIQ-Login | ConformIQSCREENLog inBUTTON_locator}     


