# Technical Testing Evaluation

## Task 1 - Test Plan Design (Unit testing + Integration Testing) 🔩

[Test Plan Definition](https://drive.google.com/file/d/1ia-CBNNOBYEMZKbw0Edd7RiL7KglYiVr/view?usp=sharing)

## Task 2 - Unit Testing (Postman)🔩

_Import both files in Postman:_

[Postman Collection](https://drive.google.com/file/d/1v2locofx9t0nBdrxfHruxfOY9MQszikq/view?usp=sharing)
[Postman Environment](https://drive.google.com/file/d/1DCIHtE8eJhIHxgNnerYt9zj2YNmMquN9/view?usp=sharing)

## Task 3 - Integration Testing (Robot Framework)🔩
The project is dividid in 3 main folders:
* _conf_: contain the env file
* _keywords_: contain the keywords files used by the tests
* _tests_: contain the integration tests

### Starting 🚀

These instructions will guide you to be able to execute and understand the project.

### Prerequisites 📋

What things do you need to install the software and how to install them?

1. Install an IDE like Visual Studio Code: https://code.visualstudio.com/
2. Install the Robot Framework extension for Visual Studio Code: "Robot Framework Language Server" (https://marketplace.visualstudio.com/items?itemName=robocorp.robotframework-lsp)
3. Download and Install Python - https://www.python.org/
4. Install Robotframework  - https://robotframework.org/
    ```
    pip install robotframework
    ```
5. Install SeleniumLibrary - https://github.com/robotframework/SeleniumLibrary/
    ```
    pip install --upgrade robotframework-seleniumlibrary
    ```
6. Install RESTinstance library -
    ```
    pip install --upgrade RESTinstance
    ```
7. Clone the repository
    ```
    git clone https://github.com/steliijb/BackendIntegrationTests.git
    ```
8. Open the project with Visual Studio Code
    
### Execute tests ⚙️

In order to execute, the current path must be moved to the path where the test is stored. 

_Example:_
```
robot -V conf/env.py --outputdir outputs -L Trace -i API tests/api/chargers
```

---
[Jorge GitHub](https://github.com/steliijb) 😊