FROM maven:3.9.9-eclipse-temurin-21

RUN apt-get update \
  && apt-get install -y unzip \
  && rm -rf /var/lib/apt/lists/*
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash \
  && \. "$HOME/.nvm/nvm.sh" \
  && nvm install 22 
