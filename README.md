# Quicasses - Assessment Platform

Quicasses is a platform for creating and taking assessments. This README provides instructions on how to set up, run, and manage the application using Docker Compose.

## Prerequisites

Before you begin, ensure you have the following installed:

-   [Docker](https://www.docker.com/get-started)
-   [Docker Compose](https://docs.docker.com/compose/install/)
-   [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Installation

1.  **Clone the repository:**

    ```bash
    git clone <repository_url>
    cd quicasses
    ```

2.  **Configure Environment Variables:**

    Create a [.env](http://_vscodecontentref_/2) file in the root directory of the project. Add the following environment variables:

    ```
    API_KEY=your_google_api_key
    DB_USERNAME=your_db_username
    DB_PASSWORD=your_db_password
    DB_HOST=mysql
    DB_PORT=3306
    DB_NAME=quicasses
    JWT_SECRET_KEY=your_jwt_secret_key
    NEXT_PUBLIC_API_URL=http://localhost:5000
    REDIS_HOST=redis
    REDIS_PORT=6379
    ```

    Replace the placeholder values with your actual configuration.
    There's `.env.example` file available for your help

3.  **Clone the frontend and backend repositories:**

    Run the [setup.sh](http://_vscodecontentref_/1) script to clone the frontend and backend repositories and set up the application.

    ```bash
    ./setup.sh
    ```

## Running the Application Manually

1.  **Start the services:**

    Use Docker Compose to build and start the application services.

    ```bash
    docker-compose up --build -d
    ```

    This command will:

    *   Build the Docker images for the backend and frontend.
    *   Start the MySQL, Redis, backend, and frontend containers in detached mode.

2.  **Access the application:**

    Once the services are up and running, you can access the application in your browser at `http://localhost:3000`.

## Managing the Application

### Stopping the Application

To stop all the services, run:

```bash
docker-compose down