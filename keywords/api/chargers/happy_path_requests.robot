* Settings *
Library         REST    ${CHARGERS_ENDPOINT}
* Variables *

* Keywords *
GET All Chargers
    [Documentation]     This keyword performs a GET request to the /chargers endpoint, checking at the same time the response status and receiving all
    ...                 the available chargers in the body response.
    GET         /chargers
    Integer    response status           200
    String    response reason            OK
    [Teardown]  Output  response


GET Charger By Id
    [Documentation]    This keyword performs a GET request to the /chargers endpoint sending the charger id in the path request, checking at the same time the response status and receiving
    ...                the available information for the charger in the body response.
    ...                Examples:
    ...                | GET Charger By Id | 61816b7397069d03e848f78d |
    [Arguments]        ${charger_id}
    GET         /chargers/${charger_id}
    Integer    response status           200
    String    response reason            OK
    #[Teardown]  Output  response

POST Create Charger
    [Documentation]    This keyword performs a POST request to the /chargers endpoint sending a valid JSON in body (id should be unique), checking at the same time the response status.
    ...                Examples:
    ...                | POST Create Charger | 
    ...                {
    ...                      "id": 7,
    ...                      "model": "Quasar",
    ...                      "maxPower": "7.4kW",
    ...                      "connectorType": "CHAdeMO",
    ...                      "cableLenght": 7,
    ...                      "color": "Blue",
    ...                      "price": 1600.53
    ...                }
    [Arguments]        ${create_charger_json}
    POST         /chargers    ${create_charger_json}
    Integer    response status           201
    String    response reason            Created
    [Teardown]  Output  response

PUT Update Charger By Id
    [Documentation]    This keyword performs a PUT request to the /chargers endpointsending the charger id in the path request and the body with the info that we want to update, 
    ...                checking at the same time the response status.
    ...                Examples:
    ...                | PUT Update Charger By Id | 61816b7397069d03e848f78d |
    ...                {
    ...                      "id": 1,
    ...                      "model": "Quasar",
    ...                      "maxPower": "22kW",
    ...                      "connectorType": "CHAdeMO",
    ...                      "cableLenght": 7,
    ...                      "color": "Blue",
    ...                      "price": 1500.53
    ...                }
    [Arguments]        ${charger_id}    ${update_charger_json}
    PUT         /chargers/${charger_id}    ${update_charger_json}
    Integer    response status           200
    String    response reason            OK
    [Teardown]  Output  response

DELETE Charger By Id
    [Documentation]     This keyword performs a DELETE request to the /chargers endpoint sending the charger id in the path request, checking at the same time the response status and receiving all
    ...                 the available chargers in the body response.
    [Arguments]        ${charger_id}
    DELETE         /chargers/${charger_id}
    Integer    response status           200
    String    response reason            OK
    [Teardown]  Output  response
    