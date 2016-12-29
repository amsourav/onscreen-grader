Grader: On-screen marking 
===========================

This will be rewrite of my BTP I built during my college days. Ill be experimenting with multiple techs like - 

* Microservice Architecture
* Docker
* React
* Webpack
* Mesos (maybe)
* Caching - Yes I didnt use this in my previous iteration
* ...

What it does?
============================

Can be used to grade subjective answer scripts. 


How to run
============================

* Install Docker
* Build Image

```sh
	 docker build . -t grader-app
```

* Mount codebase as volume to docker instance and run server

```sh
	docker run -itP -v $(pwd):/app grader-app
```



