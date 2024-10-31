FROM node:20.10.0-buster-slim

RUN apt-get update && apt install vim bash-completion git-flow bmon curl wget -y

RUN bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

ENV NODE_OPTIONS="--openssl-legacy-provider"

RUN echo "PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '" >> ~/.bashrc

CMD ["bash","-l"]
