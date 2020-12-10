echo -e "\n---Create Portainer Volume---\n"
sleep 1
docker volume create portainer_data
echo -e "\n---Install Portainer---\n"
sleep1
docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce