FROM invent-registry.kde.org/neon/docker-images/plasma:user

RUN userdel -f -r neon && useradd -m /bin/bash runner && usermod -a -G sudo runner

ENV DISPLAY=:1
ENV KDE_FULL_SESSION=true
ENV SHELL=/bin/bash
ENV HOME=/home/runner
ENV XDG_RUNTIME_DIR=/run/runner
USER runner
WORKDIR /home/runner
CMD startplasma-x11

