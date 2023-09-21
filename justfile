build:
    # Building the docker image with the tag plugin-builder
    docker build -t plugin-builder .

create:
    # Creating a docker container with the name plugin-container from the image plugin-builder
    docker create --name plugin-container plugin-builder

copy:
    # Copying the file from the docker container to the host machine
    docker cp plugin-container:/app/example-plugin.so ~/.ipfs/plugins/
    chmod +x ~/.ipfs/plugins/example-plugin.so

remove:
    # Removing the created docker container
    docker rm plugin-container

all: build create copy remove
