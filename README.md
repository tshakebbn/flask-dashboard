# Example Flash Dashboard
Flask dashboard template. Full description.

# Docker Build Instructions
docker build --no-cache=true -t "flask-dashboard:X.X.X.X" .
docker tag "image" "dockeruser/image"
docker login
docker push "dockeruser/image"

# dependencies
sudo apt-get install nodejs