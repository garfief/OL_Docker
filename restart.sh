  echo "Stopping Docker Container"
  docker stop WSRP_Test
  echo "Remove container"
  docker rm WSRP_Test
  echo "Rebuild Container"
  docker build -t app .
  echo "Starting Container"
  docker run --name WSRP_Test -d -p 80:9080 -p 443:9443 app
