# GenerativeAI Robot Framework Tests

This is a Robot Framework project for automated testing using GenerativeAI, that is, part or all of this project's content was made based on AI suggestions, I took the liberty of changing some parts. This project uses the following folder structure:

- **docs**: Contains the documentation related to the project, including requirements, design documents, and user manuals.

- **tests**: Contains the test suites that you create for your project. The test suites are organized by functionality or component.

- **resources**: Contains the resources required by the test suites, such as libraries, keywords, and variables.

- **results**: Contains the results of your test runs, including log files, output files, and any other relevant data.

- **config**: Contains all the configuration files required by your project, such as settings for the test environment, database connections, and other project-specific settings.

- **support**: Contains any additional support files required by your project, such as scripts, data files, and other resources.

- **external_libs**: Contains any external libraries used in the project.

I also have structured this project following the principles of the Page Object Model. This means that for each page of the web application, or for each API endpoint, I have a corresponding class. This class contains the elements of the page or the details of the endpoint, as well as methods for interacting with these elements or endpoints.

The focus is that by following this pattern, we have code reusability, facilitated maintenance, separation of responsibilities, and better readability.

- **tests**: Here you will find all the test scripts, organized by page or endpoint.

- **keywords**: Keywords are high-level actions that can involve interaction with one or more pages/endpoints. Keywords are reusable and can be used in multiple tests. 

- **variables**: Variables are values that are used in various places in our tests. By isolating these variables in their own place, we can make our tests more consistent and easy to maintain.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- Python 3
- Pip
- ChromeDriver

### Installing

1. Clone the repository
2. Install the dependencies:

```sh
pip install -r requirements.txt
```

### Running the Tests

To run the tests, use the following command:

```sh
robot --outputdir results tests
```

This will run all the tests in the tests/ directory and save the report in the results/.

### Test Results

The test results will be generated in the results/ directory. Open the report.html file to view the HTML report.

### Test Configuration

The test configuration can be found in the config / directory. The settings.robot file contains the default configuration, which can be overridden using environment variables or command line arguments.

### Badges

[![Robot Framework Tests](https://github.com/Samska/gen-ai-robot-test/actions/workflows/robot.yml/badge.svg)](https://github.com/Samska/gen-ai-robot-test/actions/workflows/robot.yml)