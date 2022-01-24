FROM ubuntu

RUN apt-get update

# Avoid tzdata infinite waiting bug
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Moscow

RUN apt-get install -y apt-utils vim curl apache2 apache2-utils
RUN apt-get -y install python3 libapache2-mod-wsgi-py3
RUN ln /usr/bin/python3 /usr/bin/python
RUN apt-get -y install python3-pip
#Add sf to avoid ln: failed to create hard link '/usr/bin/pip': File exists
RUN ln -sf /usr/bin/pip3 /usr/bin/pip
RUN pip install --upgrade pip
RUN pip install django ptvsd
ADD ./demo_site.conf /etc/apache2/sites-available/000-default.conf
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
