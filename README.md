# Technical Testing Evaluation

_All automated integration tests for chargers endpoints will be added to this repository_

## Starting 🚀

_These instructions will guide you to be able to execute and understand the project_

### Prerequisites 📋

_What things do you need to install the software and how to install them?_

```
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
    
## Execute tests ⚙️

_In order to execute, the current path must be moved to the path where the test is stored.. Example:_
```
robot -V conf/env.py --outputdir outputs -L Trace -i API tests/api/chargers
```

### Test Plan Definition 🔩

[Test Plan Definition]()


---
[Jorge GitHub](https://github.com/steliijb) 😊