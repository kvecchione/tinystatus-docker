Tinystatus Docker Container
---

Using the tinystatus script pulled from https://github.com/bderenzo/tinystatus, this creates a docker image that will run checks every minute using configs on a mapped volume and nginx.

A Kubernetes manifest is included as an example of using a configmap to define the checks/incidents as well.