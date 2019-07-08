FROM nginx:latest

RUN apt update && apt -y install curl && apt clean