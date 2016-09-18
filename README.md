# docker-nodejs

This dockerfile will help you to Launch an image based on debian latest version which content a nodejs and single tools for developpement like git, vim, curl and others.
You can run containers based on this image with another users that root, see below how you can do it.


### How can you build this ?

##### Clone this repository
* Clone this repository and type
```
$ git clone https://github.com/ngako/docker-nodejs.git
```
* Go to the docker-nodejs folder and type
```
$ docker build -t <image-name> .
```

##### How can you launch your container bases on you new image with other use that root?
```
$ docker run -it --name <name-container> -e LOCAL_USER_ID=`id -u $USER` -e LOCAL_USER_NAME=$USER -d <image-name>
```
* Into your container type
```
$ add-local-user
$ gosu dev bash
```

