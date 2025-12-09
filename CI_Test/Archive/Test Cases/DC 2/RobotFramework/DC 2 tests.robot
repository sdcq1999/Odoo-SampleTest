*** Settings ***
Documentation    WARNING! This file has been automatically generated using the Conformiq <Robot Framework Scripter> scripting backend. PLEASE DO NOT EDIT.
Library    SeleniumLibrary
Library    DateTime
Resource          DC 2 keywords.robot
Resource          Conformiq RobotFwk Utils library.txt

*** Variables ***

*** Test Cases ***
TC_1 Home | ConformIQTC_1 Login | ConformIQ
    Home | ConformIQ SmartScanner       https://conformiq11.odoo.com/
    Login | ConformIQ SmartScanner       suhas.deshpande@conformiq.com       Timetravel@1999
TC_1 Home | ConformIQTC_1 Login | ConformIQ [2]
    Home | ConformIQ SmartScanner       https://conformiq11.odoo.com/
    Login | ConformIQ SmartScanner       invalid       invalid