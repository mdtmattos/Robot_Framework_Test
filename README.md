# Robot Framework
Project using Robot Framework and Gherkin

* **SETTING THE ENVIRONMENT:**
* 1 - Install Python 3.10
* 2 - Install items from the requirements.txt file using pip install "item"
* 3 - Download and insert the chromedriver into the folder C:\Users\yourUser\AppData\Local\Programs\Python\Python310\Scripts
---
* **COMMAND TO RUN THE TESTS:**
* TESTE WEB: robot -d .\WEB\results .\WEB\Tests\

* **REPORTS**
* All tests reports are in a file called report.html into folder WEB\results

* **FOLDERS:**
* PageObject: Contain the elements of the webpage
* TestConfig: Contain configuration and common commando of the project
* WEB: Contain test files
* Tests: Contain Gherkin structured test cases
* Controller: Contain step's automation of test cases
* Results: Contain tests reports
