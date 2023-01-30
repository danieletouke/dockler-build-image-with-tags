FROM httpd:latest

RUN mkdir /daniel

WORKDIR /daniel

RUN apt-get -qy update
RUN apt-get install -qy bash-completion

RUN apt-get install -qy git

RUN apt-get install -qy unzip

RUN apt-get install -qy wget

RUN wget https://releases.hashicorp.com/terraform/1.0.7/terraform_1.0.7_linux_amd64.zip
RUN unzip terraform_1.0.7_linux_amd64.zip
RUN mv terraform /bin/

# RUN bash

# RUN apt-get install -qy terraform

COPY index.html /var/www/html/
COPY error.html /var/www/html/


# CMD [ "echo" , "hooray" ]

CMD [ "bash" ]




