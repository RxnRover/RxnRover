# SQSnobFit with ZeroMQ Objective Function

This project employs SQSnobFit to optimize a function calculated remotely. This is done by providing SQSnobFit with an objective function that sends parameters to and receives function values from a remote calculator using ZeroMQ message queues. NOTE: The function provider must be running and ready to accept messages before this program is run, or this program will hang on the first request.

This optimization code is designed as part of the 
[SQSnobFit Plugin](https://github.com/RxnRover/plugin_sqsnobfit) for 
[Rxn Rover](https://github.com/RxnRover/RxnRover).

# Installation

It is recommended that dependencies are installed using a virtual environment,
or `venv`, and this is required if using `make`. All of the following commands
are executed from the top level directory of the project (where this README.md
file is).

## With `make`

1. Set up a virtual environment with:
   ```
   make venv
   ```

2. Install dependencies with:
   ```
   make install
   ```

3. The program can now be run with:
   ```
   make run
   ```
   * But make sure the function provider is running and ready to accept messages first!

## Without `make`

1. Set up a virtual environment with:
   ```
   python -m venv ./venv
   ```

2. Activate the virtual environment:
   ```
   source ./venv/bin/activate
   ```
   or for Windows:
   ```
   .\venv\Scripts\activate
   ```

3. Install dependencies:
   ```
   pip install -r requirements.txt
   ```

4. Run the program as follows to generate a default config file (which you can then edit):
   ```
   python ./src/main.py myconfig.json --default-config
   ```
   or, use an existing config file with:
   ```
   python ./src/main.py <existing_config.json>
   ```

5. Deactivate the virtual environment when you are finished by typing:
   ```
   deactivate
   ```
