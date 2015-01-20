# deployment-hackathon

## Summary

This is the repo for the 2015H1 Kickoff hackathon.  The development environment consists of:

* Marathon/Mesos Playa Vagrant VM  https://github.com/mesosphere/playa-mesos
* An Apache Vagrant VM to act as the "remote repository" for storing binaries and runtime dependencies

## Instructions

### Clone this git repo to your laptop

### Install Apache vagrant vm

```
cd apache 
vagrant up
```

Test installation by going to: 

http://192.168.33.10

### Install Playa vagrant vm

```
./playa-bootstrap.sh
cd playa-mesos
vagrant up
```
Test installation by going to: 

http://10.141.141.10:8080


### Other Information and Tips

* Playa is a project which installs a complete Mesos/Marathon sandbox. More information at:
  - https://github.com/mesosphere/playa-mesos
  - http://mesosphere.com/docs/getting-started/developer/vm-install/
* The Marathon API documentation can be found here: https://mesosphere.github.io/marathon/docs/rest-api.html
* Another useful link about deployments with Marathon: https://mesosphere.github.io/marathon/docs/deployments.html
* We will use Python for developing the POC tool
* It would be great to deploy a real application instead of just a "sample app".  You are encouraged to find a use-case than can be deployed in a stand-alone manner, that will still run without backend dependencies.  We at mobile.de will deploy our new public-search java application.
