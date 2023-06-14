FROM ubuntu
RUN apt update
RUN apt install -y apache2
RUN apt cowsay
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
