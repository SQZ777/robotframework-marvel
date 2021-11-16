*** Settings ***
Variables     config_variables.py
Library     common.py
Library    RequestsLibrary
Suite Setup    Create Session    MARVEL_API    ${${ENV}.MARVEL_URL}

*** Variables ***
${api_private_key}=    ${${ENV}.MARVEL_PRIVATE_KEY}
${api_public_key}=    ${${ENV}.MARVEL_PUBLIC_KEY}

*** Keywords ***
Get Character With Beginning Of The Name
    [Arguments]    ${character_name}
    ${timestamp}=    Get Time    epoch
    ${hash}=    Get Md5 Hash    ${timestamp}${api_private_key}${api_public_key}
    ${params}=    Create Dictionary    ts=${timestamp}    apikey=${api_public_key}    hash=${hash}    nameStartsWith=${character_name}
    ${response}=    Get On Session    alias=MARVEL_API    url=/v1/public/characters    params=${params}    expected_status=200
    Return From Keyword    ${response}

*** Test Cases ***
Get Beginning With Tony's Character Name Info
    ${result}=    Get Character With Beginning Of The Name    Tony
    Should Be Equal As Strings    ${result.json()["data"]["results"][0]["name"]}    Tony Stark
