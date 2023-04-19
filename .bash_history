claer
clear
sudo apt-get update && sudo install docker.io
sudo apt install docker.io
sudo usermod -aG docker $USER
sudo reboot
clear
history
sudo apt install dcoker-compose
sudo apt install docker-compose
vim docker-compose.yaml
docker-compose up -d
vim docker-compose.yaml
docker-compose ps
docker-compose images
docker ps
docker images
clear
docker ps
docker inspect container db6a4b028c05
docker ps
docker logs container db6a4b028c05 
clear
docker logs db6a4b028c05 
docker ps
docker stop db6a4b028c05
docker ps
docker start db6a4b028c05
docker ps
docker rm db6a4b028c05
docker stop db6a4b028c05
docker rm db6a4b028c05
docker ps
docker-compose up -d
ls
docker ps
docker exec -it 6ab356200769 bash
mkdir volumes
cd volumes/
mkdir react-django
ls
cd react-django/
pwd
docker volume create --name react_django_volume --opt type=none --opt device=/home/ubuntu/volumes/react-django -opt o=bind
pwd
docker volume create --name django_react_volume --opt type=none --opt device=/home/ubuntu/volumes/react-django -opt o=bind
docker volume create --name django_volume --opt type=none --opt device=/home/ubuntu/volumes/react-django -opt o=bind
docker volume create --name django_volume --opt type=none --opt device=/home/ubuntu/volumes/react-django --opt o=bind
docker  ps
docker stop 6ab356200769
docker kill 6ab356200769
docker run -d -p 8000:8000 --mount source=django_volume,target=/app amitkmr076/react_django_demo_app:latest
ls
docker ps
docker exec -it 6c6b5f11f54a  bash
ls
touch test.txt
docker exec -it 6c6b5f11f54a  bash
exit
