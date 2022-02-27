*** Settings ***
Library          Selenium2Library
Variables        ${CURDIR}/Openbrowser.yaml


***Variables***
${Fail}          Error
${Pass}          Pass

***Keyword***
Open Browser chrome
    Open Browser    ${base_url}   chrome
    Maximize Browser Window
    Set Selenium Speed    0.1

I want validate click women's link
    Wait Until Page Contains 	 Call us now: 	 timeout=30 	 error=Not found
    Mouse Over    //*[@id="block_top_menu"]/ul/li[1]/a
    Wait Until Page Contains 	 Top 	 timeout=30 	 error=Not found

I want validate Choose T-shirts
    Mouse Over    //*[@id="block_top_menu"]/ul/li[1]/ul/li[1]/ul/li[1]/a
    Click Element    //*[@id="block_top_menu"]/ul/li[1]/ul/li[1]/ul/li[1]/a
    Wait Until Page Contains 	 Catalog 	 timeout=30 	 error=Not found


I want validate get name T-shirts
    Scroll Element Into View    //*[@id="center_column"]/ul/li/div/div[2]/h5/a
    ${productname}=    Get Element Attribute    //*[@id="center_column"]/ul/li/div/div[2]/h5/a    title
    #Log To Console    ${productname}
    Input Text    id=search_query_top     ${productname}


I want validate Search T-shirts
    Click Element    name=submit_search
    Wait Until Page Contains 	 1 result has been found 	 timeout=30 	 error=Not found
    Mouse Over    //*[@id="center_column"]/ul/li/div/div[2]/h5/a

I want validate the same product T-shirts
    ${sameproductname}=    Get Element Attribute    //*[@id="center_column"]/ul/li/div/div[2]/h5/a    title
    #Log To Console    ${sameproductname}
    Pass Execution If   '${sameproductname}' == 'Faded Short Sleeve T-shirts'    Pass
    Element Text Should Be 	 //*[@id="center_column"]/ul/li/div/div[2]/h5/a 	 expected=Faded Short Sleeve T-shirts 	 message=Error 	 ignore_case=False




