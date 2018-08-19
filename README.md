Containers:
1. container that runs Nginx to handle web requests; 
2. container that runs PHP-FPM to handle application requests;
![alt text](images/docker-laravel-setup.png?raw=true "Title")

Containers will be linked together so they can communicate with one another;

2 services have been defined, named web and app:
- these services are set to build with our project root as the context, and specify the names of Dockerfiles that will tell Docker how to build the containers (we'll create those files next)
- both services mount our project directory as a volume on the container at /var/www
- the web container exposes port 8080 on our machine and points to port 80 on the container. This is how we'll connect to our app. You can change 8080 to any port you'd prefer
- the web container "links" the app container. This allows us to reference app as a host from the web container, and Docker will automagically handle routing traffic to that container





by: 
    https://kyleferg.com/laravel-development-with-docker/?utm_source=laravelfeed.com