FROM devopsedu/webapp
RUN apt update -y
RUN apt install git -y
RUN git clone https://github.com/Vivarsh/projCert.git
ADD /projCert/website /var/www/html/
RUN rm /var/www/html/index.html
CMD apachectl -D FOREGROUND
