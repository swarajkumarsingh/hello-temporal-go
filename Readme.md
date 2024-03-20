# Hello Temporal | Golang Docker

This is a simple project showcasing the integration of Temporal and Golang within a Docker environment. The project consists of a basic "Hello" application that utilizes Temporal for workflow orchestration.

- Temporal Dashboard
![Screenshot 2024-01-13 000811](https://github.com/swarajkumarsingh/hello-temporal-go/assets/89764448/ffabe530-4624-487c-a358-fb5a3e67b007)

- Temporal + Go + Docker = Output
![a](https://github.com/swarajkumarsingh/hello-temporal-go/assets/89764448/0816f304-b7a6-4fe8-9d18-1947a733b2c1)


## Workflow of temporal
![diagram-export-2-16-2024-1_19_28-AM](https://github.com/swarajkumarsingh/hello-temporal-go/assets/89764448/5df55b01-879b-414a-97f7-1964f7accc3f)


- Start the server 
- Define a task(queue) with name
- Execute a workflow and push it to the queue
- Start worker.go file(contains all the registration of workflow and activity)
- Still now the task state is running
- Now worker.go, starts executing all workflow in the given queue like a queue conusmer
- And updates the state in temporal dashboard as "completed" or "failed" according to the execution 

## How the code executes
- We define the code for the workflow in the project
- Then we start the temporal, connect to temporal server with the specific queue name
- Then execute the workflow in the starter
- Optionally wait for the workflow to complete and give the expected result
- Then worker.go comes, here again we connect worker to temporal
- And register all the workflows and activities
- At last run the worker which then executes Workflow
- Generally worker is made to run first as, we create workflow and it gets connected in parallel


## Prerequisites

Make sure you have the following installed on your system:

- Docker
- Go (Golang)
- Temporal Server (Docker Compose is used in this example)

## Getting Started

1. Clone this repository:

    ```bash
    git clone https://github.com/swarajkumarsingh/hello-temporal-go.git
    cd hello-temporal-go
    ```

2. Start the Temporal Server:

    ```bash
    git clone https://github.com/temporalio/docker-compose.git
    cd docker-compose
    docker compose up
    ```

4. Run the Worker
    ```bash
    make start_worker
    ```

4. Run the Starter
    ```bash
    make start_starter
    ```

## Usage

- The Hello application will start and execute a simple Temporal workflow, printing "Hello, Temporal!".

## Stopping the Environment

To stop the Temporal Server and clean up the environment, run:

```bash
docker-compose down
```


## Contributing
If you find any issues or have improvements, feel free to open an issue or submit a pull request. Contributions are welcome!

## License
This project is licensed under the MIT License - see the LICENSE file for details.
