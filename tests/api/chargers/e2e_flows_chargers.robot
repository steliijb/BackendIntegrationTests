* Settings *
Library         REST    ${CHARGERS_ENDPOINT}
Resource        ../../../keywords/api/chargers/happy_path_requests.robot
Resource        ../../../keywords/api/chargers/chargers_get_requests.robot
Documentation   

* Variables *
${create_charger_json}    {"id": 7,"model": "Quasar","maxPower": "7.4kW","connectorType": "Type 2","cableLenght": 5,"color": "Blue","price": 1100.53}
${update_charger_json}    {"id": 1,"model": "Quasar","maxPower": "22kW","connectorType": "CHAdeMO","cableLenght": 7,"color": "Blue","price": 1500.53}
${charger_id}            61816b7397069d03e848f78d

* Test Cases *
Get The Chargers List And Check A Charger By Id
    [Tags]  API
    ${id}    Extract An Id From All The Chargers By Position    0    
    GET Charger By Id    ${id}
    ${output_id}    Output  $._id
    Should Be Equal As Strings    ${output_id}        ${id}
    #[Teardown]  Output  response

Get The Chargers List To Select A Charger For Delete And Check If Was Deleted
    [Tags]  API
    ${size}    Extract Last Charger Id
    ${id}    Extract An Id From All The Chargers By Position    ${size-1}    
    DELETE Charger By Id    ${id}
    Check That A Charger Does Not Exist    ${id}
    #[Teardown]  Output  response        

Create A New Charger And Check If Was Created
    [Tags]  API
    POST Create Charger    ${create_charger_json}
    ${id_charger_created}    Output    $._id
    ${size}    Extract Last Charger Id
    ${id}    Extract An Id From All The Chargers By Position    ${size-1}
    Should Be Equal As Strings    ${id_charger_created}        ${id}  
    [Teardown]  Output  response 
