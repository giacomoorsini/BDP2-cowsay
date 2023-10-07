FROM ubuntu 
RUN apt update 
RUN apt install -y cowsay 
ENV FILE=messages.txt LOCATION=.
ENV MOOOD=-w
ENV TIME=1
ADD $FILE $LOCATION
CMD while read i; do /usr/games/cowsay $MOOOD "$i"; sleep $TIME ;done < $LOCATION/$FILE


#ENV MESSAGE="Moooo, I'm a virtual cow"
#CMD /usr/games/cowsay $MESSAGE
#ENV FILE=messages.txt LOCATION=.
#ENV MOOOD=-w
#ENV TIME=1
#ADD $FILE $LOCATION
#CMD sort -R $LOCATION/$FILE | head -n 1 | /usr/games/cowsay $MOOOD
#CMD while read i; do /usr/games/cowsay $MOOOD "$i"; sleep $TIME ;done < $LOCATION/$FILE 
