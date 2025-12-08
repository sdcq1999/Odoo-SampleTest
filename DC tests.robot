*** Settings ***
Documentation    WARNING! This file has been automatically generated using the Conformiq <Robot Framework Scripter> scripting backend. PLEASE DO NOT EDIT.
Library    SeleniumLibrary
Library    DateTime
Resource          DC keywords.robot
Resource          Conformiq RobotFwk Utils library.txt

*** Variables ***

*** Test Cases ***
TC_1 Home | ConformIQTC_1 Login | ConformIQ
      ${1:URL FIELD}      Load Excel Data    FLOW1    TC_1 Home | ConformIQTC_1 Login | ConformIQ    1:URL FIELD
    Home | ConformIQ SmartScanner       ${1:URL FIELD}
      ${2:login TEXTBOX}      Load Excel Data    FLOW1    TC_1 Home | ConformIQTC_1 Login | ConformIQ    2:login TEXTBOX
      ${2:password TEXTBOX}      Load Excel Data    FLOW1    TC_1 Home | ConformIQTC_1 Login | ConformIQ    2:password TEXTBOX
    Login | ConformIQ SmartScanner       ${2:login TEXTBOX}       ${2:password TEXTBOX}
TC_1 Home | ConformIQTC_1 Login | ConformIQ [2]
      ${1:URL FIELD}      Load Excel Data    FLOW1    TC_1 Home | ConformIQTC_1 Login | ConformIQ 2    1:URL FIELD
    Home | ConformIQ SmartScanner       ${1:URL FIELD}
      ${2:login TEXTBOX}      Load Excel Data    FLOW1    TC_1 Home | ConformIQTC_1 Login | ConformIQ 2    2:login TEXTBOX
      ${2:password TEXTBOX}      Load Excel Data    FLOW1    TC_1 Home | ConformIQTC_1 Login | ConformIQ 2    2:password TEXTBOX
    Login | ConformIQ SmartScanner       ${2:login TEXTBOX}       ${2:password TEXTBOX}