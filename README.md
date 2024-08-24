# Django Project Dockerization

This repository provides a step-by-step guide on how to Dockerize a Django project. By the end of this guide, you'll have a Django application running inside Docker containers.

## Prerequisites

Before you start, make sure you have the following installed:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)


## Build and Run the Containers

Now that everything is set up, you can build and run your Docker containers.

1. Build the Docker images:

   ```bash
   docker-compose build
   ```

2. Run the containers:

   ```bash
   docker-compose up
   ```

3. Apply migrations:

   ```bash
   docker-compose run web python manage.py migrate
   ```

4. Create a superuser:

   ```bash
   docker-compose run web python manage.py createsuperuser
   ```

5. Access the application at `http://localhost:8000/`.

## Additional Tips

- **Stopping the Containers**: To stop the running containers, use:

  ```bash
  docker-compose down
  ```

- **Rebuilding the Containers**: If you make changes to your Dockerfile or `docker-compose.yml`, you may need to rebuild the images:

  ```bash
  docker-compose up --build
  ```
