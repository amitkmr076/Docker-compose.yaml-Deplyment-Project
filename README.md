NOTE: 1:  "VOLUME" here is create manually and later added to other replicas of the container by auto because they are replicas of same container and by
          running docker-compose file and BUT ,For other service like MYSQL we run the command to attach the existed "django_volume" - after stopping the            mysql container we run the command -"docker stop mysql_ID "
         " docker run -d -e MYSQL_ROOT_PASSWORD=test@123 --mount source=django_volume,target=/app mysql:latest "    - mount the volume to mysql Image
           By ruuning this command Mysql image will rebuild and will attach to the django_volume OR existing volume.
     
   2: Using "external"parameters in Step -7 & Step-12 to attach the other containers to the existed volume and for other services it is advice to create      an seperate volumes as it will seperate the data files and backups which will not mix-up and complicate the database and in worse case it will lock     the files.But if we want to attach an existing volume to other we can do so as shown in Above 1: Note.

   3: AND for "PORTS": you need to specify number of ports attach to default port so that the replicas or other containers can allocate through it             otherwise it will show an Error. As shown in step- 6.


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

