# GenerativeAI Robot Framework Tests

This is a Robot Framework project for testing a UI and API using GenerativeAI. The project uses SeleniumLibrary for interacting with the UI and RequestsLibrary for the API.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- Python 3
- Robot Framework
- SeleniumLibrary
- RequestsLibrary

### Installing

1. Clone the repository
2. Install the required Python packages:

```sh
pip install robotframework
```

```sh
pip install robotframework-seleniumlibrary
```

```sh
pip install robotframework-requests
```

```sh
pip install robotframework-faker
```

### Running the Tests

To run the tests, use the following command:

```sh
robot tests/
```

This will run all the tests in the tests/ directory.

### Test Results

The test results will be generated in the results/ directory. Open the report.html file to view the HTML report.

### Test Configuration

The test configuration can be found in the config/ directory. The settings.robot file contains the default configuration, which can be overridden using environment variables or command line arguments.

### License

This project is licensed under the MIT License - see the LICENSE.md file for details.