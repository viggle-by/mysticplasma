FROM invent-registry.kde.org/neon/docker-images/plasma:user

RUN sudo apt update && sudo apt install neofetch
