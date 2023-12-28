FROM debian:bookwarm

ARG USERNAME
ARG PASSWORD

# Install some basic dependencies
RUN apt update; apt install curl build-essential zsh -y

# Create a new user
RUN useradd -ms /usr/bin/zsh ben

# Set the password for the new user
RUN echo "${USERNAME}:${PASSWORD}" | chpasswd
