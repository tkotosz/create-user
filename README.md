# create-user

Shell script to create or update user, copied from [this](https://github.com/paslandau/docker-php-tutorial/blob/part_3_structuring-the-docker-setup-for-php-projects/.docker/.shared/scripts/create_user.sh) docker tutorial initially.
[Docker image](https://hub.docker.com/repository/docker/tkotosz/create-user) is also available.

## Usage

```
FROM debian

# Install create-user script
COPY --from=tkotosz/create-user /usr/bin/create-user /usr/local/bin/create-user

# Create www-data user
ARG APP_USER=www-data
ARG APP_GROUP=www-data
ARG APP_USER_ID=1000
ARG APP_GROUP_ID=1000
RUN create-user ${APP_USER} ${APP_GROUP} ${APP_USER_ID} ${APP_GROUP_ID}

# other stuff...
...
```

See `Dockerfile` in the `test` folder for example.
