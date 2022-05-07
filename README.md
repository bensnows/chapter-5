# Chapter-5

Code and examples for Chapter 5 of [Bootstrapping Microservices](http://bit.ly/2o0aDsP).

In chapter 5 you learn how to make microservices communicate with direct and indirect messages and how to get whole application "live reload" working.

Please see README in each sub-directory for instructions on starting the particular example.

[Click here to support my work](https://www.codecapers.com.au/about#support-my-work)


Use minikube to test live-reload on winodows

1. run replacePathToWindows.sh to replace ./history/, ./video-streaming/, ./recommendations/ to /src under minikube

2. open powershell and change directory to desired folder (like example-1)

3. run 
```Powershell
$current_directory = (pwd).path
minikube mount ${current_directory}:/src
```

4. use another powershell or git bash to start docker-compose up --build under the same folder