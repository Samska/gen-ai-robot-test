# GenerativeAI Robot Framework Tests

This is a Robot Framework project for testing a UI and API using GenerativeAI, that is, part or all of this project's content was made based on ChatGPT suggestions, I took the liberty of changing some parts. The project uses SeleniumLibrary for interacting with the UI and RequestsLibrary for the API. This project uses the following folder structure:

- **docs**: Contains the documentation related to the project, including requirements, design documents, and user manuals.

- **tests**: Contains the test suites that you create for your project. The test suites are organized by functionality or component.

- **resources**: Contains the resources required by the test suites, such as libraries, keywords, and variables.

- **results**: Contains the results of your test runs, including log files, output files, and any other relevant data.

- **config**: Contains all the configuration files required by your project, such as settings for the test environment, database connections, and other project-specific settings.

- **support**: Contains any additional support files required by your project, such as scripts, data files, and other resources.

- **external_libs**: Contains any external libraries used in the project.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- Python 3
- Robot Framework
- SeleniumLibrary
- RequestsLibrary
- ChromeDriver

### Installing

1. Clone the repository
2. Install the required Python packages:

```sh
python -m pip install
pip install robotframework
pip install robotframework-seleniumlibrary
pip install robotframework-requests
pip install robotframework-faker
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