## Docker project for Django and Apache2

This is a docker project to create a container with Python3, Django and Apache2. All configurations, along with a sample django project are created

* docker-compose -f docker-compose.yml up --build

    Starts the container named django-apache2
    
* Browse to http://localhost:8005

    A sample django page is displayed.
    
If you want to replace the sample django project make sure to edit the file `demo_site.conf` properly too.

See Dockerfile and docker-compose.yml for configuration details.

