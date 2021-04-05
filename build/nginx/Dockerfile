#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "update.sh"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#

FROM nginx:latest

#add User
COPY ./user.sh /tmp/
RUN sh /tmp/user.sh
#########################
WORKDIR /home/haseel/public_html/
