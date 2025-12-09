*** Settings ***
Documentation    WARNING! This file has been automatically generated using the Conformiq <Robot Framework Scripter> scripting backend. PLEASE DO NOT EDIT.
Library    Browser
Resource          Conformiq RobotFwk Utils library.robot
*** Keywords ***
Home | ConformIQ SmartScanner
    [Arguments]    ${URL FIELD}    
      ${PERFORM Open URL-URL FIELD_locator}      Load Locator Data    Objects    PERFORM Open URL-URL FIELD_locator      Locator
      ${Home | ConformIQ-Home | ConformIQSCREENHome | ConformIQSCREENSign inHYPERLINK_locator}      Load Locator Data    Objects    Home | ConformIQ-Home | ConformIQSCREENHome | ConformIQSCREENSign inHYPERLINK_locator      Locator



    Open Browser		${URL FIELD}    
    Wait For Elements State 		${Home | ConformIQ-Home | ConformIQSCREENHome | ConformIQSCREENSign inHYPERLINK_locator}     visible
    Click		${Home | ConformIQ-Home | ConformIQSCREENHome | ConformIQSCREENSign inHYPERLINK_locator}     



Login | ConformIQ SmartScanner
    [Arguments]    ${login TEXTBOX}    ${password TEXTBOX}    
      ${Login | ConformIQ-Login | ConformIQSCREENLogin | ConformIQ_FORMFORMloginTEXTBOX_locator}      Load Locator Data    Objects    Login | ConformIQ-Login | ConformIQSCREENLogin | ConformIQ_FORMFORMloginTEXTBOX_locator      Locator
      ${Login | ConformIQ-Login | ConformIQSCREENLogin | ConformIQ_FORMFORMpasswordTEXTBOX_locator}      Load Locator Data    Objects    Login | ConformIQ-Login | ConformIQSCREENLogin | ConformIQ_FORMFORMpasswordTEXTBOX_locator      Locator
      ${Login | ConformIQ-Login | ConformIQSCREENLog inBUTTON_locator}      Load Locator Data    Objects    Login | ConformIQ-Login | ConformIQSCREENLog inBUTTON_locator      Locator



    Wait For Elements State 		${Login | ConformIQ-Login | ConformIQSCREENLogin | ConformIQ_FORMFORMloginTEXTBOX_locator}     visible
    Fill Text		${Login | ConformIQ-Login | ConformIQSCREENLogin | ConformIQ_FORMFORMloginTEXTBOX_locator}     ${login TEXTBOX}
    Wait For Elements State 		${Login | ConformIQ-Login | ConformIQSCREENLogin | ConformIQ_FORMFORMpasswordTEXTBOX_locator}     visible
    Fill Text		${Login | ConformIQ-Login | ConformIQSCREENLogin | ConformIQ_FORMFORMpasswordTEXTBOX_locator}     ${password TEXTBOX}
    Wait For Elements State 		${Login | ConformIQ-Login | ConformIQSCREENLog inBUTTON_locator}     visible
    Click		${Login | ConformIQ-Login | ConformIQSCREENLog inBUTTON_locator}     


