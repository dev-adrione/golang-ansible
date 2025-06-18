FROM ubuntu:22.04

#install prerequisites
RUN apt update && apt install -y \
    curl \
    tar \
    sudo \
    ansible

#copy files ansible
COPY ansible /ansible
WORKDIR /ansible

# execuiton playbook
CMD ["ansible-playbook", "install-golang.yml", "-i", "localhost,", "--connection=local"]
