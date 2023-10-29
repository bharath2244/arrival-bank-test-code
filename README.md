# Arrival-bank-test-code

# Dockerfile<br />
- Dockerfile for nodeJS application. Instruction description is provided in the dockerfile itself.
- To build the image run the command **`docker build -t test-app .`** from the directory where this dockerfile is present.

# docker-compose.yaml file<br />
- `nodejs`: This is noedjs service. Port exposed is 5000.
- `loki`: This is log aggregator service. Port exposed for this services is 3100.
- `grafana`: This is visualization and monitoring. This uses port 3000.
- `Promtail` is configured to collect logs from /var/log on the host system. The docker-config.yaml configuration file will be required in the same directory as this docker-compose.yml for Promtail to work properly.
- A cutom network for other services to inteact with loki service.
- Dockerfile, nodejs application file should be put in a directory called nodejs-app that is also in the same directory as docker-compose.yaml file

# print_one_to_hundred.py<br />
- Python code to print one to hundred with every tenth number as a wordy version.
- A dictionary (dict_of_tens) with key value pairs. All keys are numbers 10, 20, 30, 40, 50, 60, 70, 80, 90 and 100 with values corresponding to words equivalent to the numbers.
- For loop that iterates between one to hundred and prints all numbers from 1 to 100 with every tenth word being referred from dict_of_tens to replace the numbers with wordy version.
