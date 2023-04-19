NOTE: volume here is create manually and later added to other replicas of the container by step -7 and step -12. Using "external"

parameters to attach the other containers to the existed volume and for other services it is advice to create an seperate volumes

as it will seperate te data files and backups which will not mix-up and complicate the database and in worse case it will lock the files.


Docker-compose.yaml file: 	--------SYNTAX EXPLANATION-----

1-  version: '3'
This line specifies the version of the Docker Compose file format being used.

2-  services:
This section defines the services that will be run by Docker Compose.

3-  react-django-app:
This section defines the first service called react-django-app.


4-    image: amitkmr076/react_django_demo_app:latest
This line specifies the Docker image to use for the react-django-app service.


5-    deploy:
      replicas: 2
This section specifies that the react-django-app service should be deployed with 2 replicas.


6-    ports:
      - "8000:8005::8000"
This line maps port 8000 from the host machine to port 8005 in the container.

7-    volumes:
      - django_volume:/app
This line mounts a volume called django_volume to the /app directory inside the react-django-app container.

8-  db:
This section defines the second service called db.


9-    image: mysql
This line specifies the Docker image to use for the db service.

10-    ports:
      - "3306:3306"
This line maps port 3306 from the host machine to port 3306 in the container.

11-    environment:
      - "MYSQL_ROOT_PASSWORD=test@123"
This section sets an environment variable called MYSQL_ROOT_PASSWORD with the value test@123.

12-  volumes:
 django_volume:
  external: true
This section defines a named volume called django_volume that is marked as external, meaning it was created outside of the docker-compose.yml file and can be shared between multiple Docker Compose projects.

