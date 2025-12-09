*** Settings ***
Documentation    WARNING! This file has been automatically created using the Conformiq <Robot Framework Scripter> scripting backend. PLEASE DO NOT EDIT.
Library          Browser
Library          String
Library          Screenshot
Library          OperatingSystem
Library          Collections
Library          robot.api.logger
Library          ExcelDataHandler.py


*** Variables ***
${sFileName}                  Object Repository.xlsx
${sTestDataExcelName}         DCTestData.xlsx


*** Keywords ***
# ===================================================
#				   Browser handlers
# ===================================================
Open Application Browser
    [Documentation]    Opens Chromium in non-headless mode and loads the given URL.
    [Arguments]    ${url}

    New Browser    chromium    headless=${False}
    New Page       ${url}


# ============================================================
#                  EXCEL TEST DATA HANDLERS
# ============================================================

Load Excel Data
    [Arguments]    ${SheetName}    ${TestCasename}    ${TestCaseColumn}
    ${sData}=    ExcelDataHandler.Get Test Data Cell
    ...    ${sTestDataExcelName}
    ...    ${SheetName}
    ...    ${TestCasename}
    ...    ${TestCaseColumn}
    ...    2
    Log    Fetched Data: ${sData}    console=yes
    RETURN    ${sData}


Load Locator Data
    [Arguments]    ${ObjectSheetName}    ${ObjectName}    ${LocatorColumn}

    ${sLocator}=    ExcelDataHandler.Get Test Data Cell
    ...    ${sFileName}
    ...    ${ObjectSheetName}
    ...    ${ObjectName}
    ...    ${LocatorColumn}
    ...    1

    ${sLocator_Type}=    ExcelDataHandler.Get Test Data Cell
    ...    ${sFileName}
    ...    ${ObjectSheetName}
    ...    ${ObjectName}
    ...    LocatorType
    ...    1

    ${final}=    Set Variable    ${sLocator_Type}=${sLocator}
    IF    '${sLocator_Type}' == 'name'
        ${final}=    Set Variable    xpath=//*[@name="${sLocator}"]
    END
    Log    Fetched Locator: ${final}    console=yes
    RETURN    ${final}


Close All Excel Files
    ExcelDataHandler.Close All Workbooks


# ============================================================
#                    CLEANUP KEYWORD (PLAYWRIGHT)
# ============================================================

Cleanup
    Close All Excel Files
    Close Browser


# ============================================================
#                 PLACEHOLDER - NOT IMPLEMENTED
# ============================================================

Send Data To Excel File
    [Arguments]    ${RowName}    ${ColumnName}    ${Data}
    Log    WARNING: Excel write functionality not implemented in ExcelDataHandler.py


# ============================================================
#               ELEMENT STATUS VERIFICATION (PLAYWRIGHT)
# ============================================================

Element Should Be
    [Arguments]    ${Widget}    ${Status}

    # Disabled
    Run Keyword If    "${Status}" == "DISABLED"
    ...    Expect Element State    ${Widget}    disabled

    # Enabled
    Run Keyword If    "${Status}" == "ENABLED"
    ...    Expect Element State    ${Widget}    enabled

    # Selected / Checked
    Run Keyword If    "${Status}" == "SELECTED"
    ...    Expect Checkbox Is Checked    ${Widget}

    Run Keyword If    "${Status}" == "NOT SELECTED"
    ...    Expect Checkbox Is Unchecked    ${Widget}

    # Visibility
    Run Keyword If    "${Status}" == "VISIBLE"
    ...    Wait For Elements State    ${Widget}    visible

    Run Keyword If    "${Status}" == "NOT VISIBLE"
    ...    Wait For Elements State    ${Widget}    hidden

    # Presence (present ≠ visible in Playwright but approx same usage)
    Run Keyword If    "${Status}" == "PRESENT"
    ...    Wait For Elements State    ${Widget}    visible

    Run Keyword If    "${Status}" == "NOT PRESENT"
    ...    ${count}=    Get Element Count    ${Widget}
    ...    Should Be Equal As Integers    ${count}    0
