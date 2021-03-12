FROM devopsedu/webapp
RUN apt update -y
RUN apt install git -y
RUN git clone https://github.com/Vivarsh/projCert.git
ADD /projCert/website /var/www/html/
RUN rm /var/www/html/index.html
CMD apachectl -D FOREGROUND

sudo sh -c 'echo -e "[google-chrome]\\nname=google-chrome\\nbaseurl=http://dl.google.com/linux/chrome/rpm/stable/x86_64\\nenabled=1\\ngpgcheck=1\\ngpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub" >> /etc/yum.repos.d/google-chrome.repo'

sudo yum install -y google-chrome-stable
