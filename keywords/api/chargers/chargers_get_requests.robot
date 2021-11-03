* Settings *
Library         REST    ${CHARGERS_ENDPOINT}
* Variables *

* Keywords *
Extract An Id From All The Chargers By Position
    [Documentation]     This keyword performs a GET request to the /chargers endpoint, checking at the same time the response status and receiving all
    ...                 the available chargers in the body response. The keyword extract the _id attribute for any charger by the position as the argument.
     ...                Examples:
    ...                | Extract An Id From All The Chargers By Position | 0 |
    ...                | Extract An Id From All The Chargers By Position | 1 |
    ...                | Extract An Id From All The Chargers By Position | 2 |
    [Arguments]         ${position}
    GET         /chargers
    Integer    response status           200
    String    response reason            OK
    ${response}    Output    $[${position}]._id 
    [Return]    ${response}
    #[Teardown]  Output  response

Check That A Charger Does Not Exist
    [Documentation]     This keyword performs a GET request to the /chargers endpoint sending the charger id in the path request, checking at the same time the response status and receiving
    ...                the available information for the charger in the body response.
    ...                Examples:
    ...                | GET Charger By Id | 61816b7397069d03e848f78d |
    [Arguments]        ${charger_id}
    GET         /chargers/${charger_id}
    Integer    response status           404
    String    response reason            Not Found

Extract Last Charger Id
    [Documentation]     This keyword performs a GET request to the /chargers endpoint and return the quantity of the available chargers.
    GET         /chargers
    Integer    response status           200
    String    response reason            OK
    ${response}    Output    $.[-1:].id
    [Return]    ${response}
