FROM debian

# Install create-user script
COPY --from=tkotosz/create-user /usr/bin/create-user /usr/local/bin/create-user

# Create user
ARG APP_USER=myuser
ARG APP_GROUP=myuser
ARG APP_USER_ID=1000
ARG APP_GROUP_ID=1000
RUN create-user ${APP_USER} ${APP_GROUP} ${APP_USER_ID} ${APP_GROUP_ID}

ENTRYPOINT ["sleep","infinity"]
