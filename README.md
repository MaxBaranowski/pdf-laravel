### Containers:
1. container that runs Nginx to handle web requests; 
2. container that runs PHP-FPM to handle application requests;

![alt text](images/docker-laravel-setup.png?raw=true "Title")

Containers will be linked together so they can communicate with one another;

### 2 services: web and app
- Dockerfiles will tell Docker how to build the containers;
- both services mount our project directory as a volume on the container at /var/www;
- the web container exposes port 8080 on our machine and points to port 80 on the container. 
  This is how we'll connect to our app `localhost:8080` or `127.0.0.1:8080`;
- `Web container` "links" the app container. 
  This allows us to reference app as a host from the web container, and Docker will 
  automagically handle routing traffic to that container; 

### app container

In the "app dockerfile: we set the base image to be the official php image on Docker Hub. 

    shell commands will describe later
    
### web container

The web container just extends the official nginx image and adds an Nginx configuration file,
    
    vhost.conf to /etc/nginx/conf.d on the container .

### vhost.conf
This is a pretty standard Nginx configuration that will handle requests and 
    proxy traffic to our PHP container (through the name app on port 9000). 
    Remember from earlier, we named our service app in the Docker Compose file and 
    linked it on the web container, so here we can just reference that name and 
    Docker will know to route traffic to that app container

by: 
    https://kyleferg.com/laravel-development-with-docker/?utm_source=laravelfeed.com