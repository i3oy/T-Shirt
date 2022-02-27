*** Settings ***
Library          Selenium2Library
Library          Collections
Library          String
Variables        ${CURDIR}/Openbrowser.yaml
Resource         ${CURDIR}/KeywordSearch.robot
Suite Setup      Run Keyword  Open Browser chrome        
Suite Teardown   Close All Browsers

***Test Cases***

Scenario : Over Mouse on women 
    I want validate click women's link

Scenario : Choose T-shirts  
    I want validate Choose T-shirts

Scenario : Get name T-shirts  
    I want validate get name T-shirts

Scenario : Search T-shirts
    I want validate Search T-shirts

Scenario : Validate that the same product is displayed
    I want validate the same product T-shirts
