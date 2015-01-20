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

Marathon UI: 
  - http://10.141.141.10:8080

Mesos admin UI:
  - http://10.141.141.10:5050


### Other Information and Tips

* We will use Python for developing the POC tool
* It would be great to deploy a real application instead of just a "sample app".  You are encouraged to find a use-case than can be deployed in a stand-alone manner, that will still run without backend dependencies.  We at mobile.de will deploy our new public-search java application.
* Playa is a project which installs a complete Mesos/Marathon sandbox. More information at:
  - https://github.com/mesosphere/playa-mesos
  - http://mesosphere.com/docs/getting-started/developer/vm-install/
* The Marathon API documentation:
  - https://mesosphere.github.io/marathon/docs/rest-api.html
* Other interesting Marathon links:
  - https://mesosphere.github.io/marathon/docs/deployments.html
  - https://mesosphere.github.io/marathon/docs/event-bus.html
  - https://mesosphere.github.io/marathon/docs/service-discovery-load-balancing.html

