# Install Docker engine on ubuntu 



#Docker Engine depends on containerd and runc. Docker Engine bundles these dependencies as one bundle: containerd.io. If you have installed the containerd or runc previously, uninstall them to avoid conflicts with the versions bundled with Docker Engine.


#Run the following command to uninstall all conflicting packages:


for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done


#Installation methods

#Install using the apt repository

#Set up the repository

# 1) Update the apt package index and install packages to allow apt to use a repository over HTTPS:

sudo apt-get update

#sudo: This stands for Super User 
#It allows you to install, update, and remove software packages



sudo apt-get install ca-certificates curl gnupg



#ca-certificates: This is the name of a package that provides a collection of trusted CA (Certificate Authority) certificates. 
#curl: The name of a package that provides the curl command-line tool
#gnupg: The name of a package that provides the GNU Privacy Guard



# 2)Add Docker’s official GPG key:

sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg



#install -m 0755 -d /etc/apt/keyrings: This command creates a new directory /etc/apt/keyrings with specific permissions. 

#install: This is a command used to copy files and set attributes.
#-m 0755: This sets the permissions for the newly created directory. The 0755 value represents octal permissions, where the first digit (0) represents special permissions
#-fsSL These flags modify the behavior of curl
#-f: Fail silently on server errors.
#-s: Silent mode, don't show progress.
#-S: Show error if there's a problem.
#-L: Follow redirects.
#--dearmor: This flag tells GPG to convert the GPG key from binary format to ASCII armor format.
#https://download.docker.com/linux/ubuntu/gpg: This is the URL of the Docker GPG key.
#chmod: This command is used to change permissions of a file.
#a+r: This sets read permissions for all users (owner, group, and others).
#/etc/apt/keyrings/docker.gpg: This is the path to the file for which permissions are being changed.
                                                       

# 3) Use the following command to set up the repository:

echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null




#deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg]: This part defines the repository type and architecture for the Docker repository
#https://download.docker.com/linux/ubuntu: This is the URL of the Docker repository.
#"$(. /etc/os-release && echo "$VERSION_CODENAME")": This part determines the Ubuntu release codename dynamically
#tee: This command reads from standard input and writes to standard output and files simultaneously.
#/etc/apt/sources.list.d/docker.list: This specifies the path to the file where the repository entry will be written.
#> /dev/null: This redirects the standard output to the "null" device


# 4)Update the apt package index

sudo apt-get update

# update the repository



#Install Docker Engine


# 1)Install Docker Engine, containerd, and Docker Compose.

#To install the latest version run
                               
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin


#docker-ce: This is the main package name for Docker Community Edition (CE) & command-line interface (CLI)
#docker-compose-plugin: This is another plugin for Docker called Docker Compose. It allows you to define and manage multi-container applications using a YAML file.



# 2)Verify that the Docker Engine installation is successful by running the hello-world image.


sudo docker run hello-world


# For check the docker engine install or not use the command

# To see docker version
docker --version
