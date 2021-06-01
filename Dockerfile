FROM bash AS build

COPY create-user /tmp/create-user
RUN chmod +x /tmp/create-user

FROM scratch

COPY --from=build /tmp/create-user /usr/bin/create-user