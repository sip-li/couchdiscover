# Changelog for couchdiscover

## 0.2.4
### August 28, 2017
* Supports CouchDB 2.1.0
* Added sane defaults for CouchServer.request, updated CouchInitClient.upgrade_auth_if_enabled to test for 'disabled' in status.


## 0.2.3
### Dec 16, 2016
* Bumped commit requirement for pykube to include recent [statefulset pull request](https://github.com/kelproject/pykube/pull/103).
* Added support for Kubernetes 1.5 (StatefulSets), dropping support for 1.4.x in this and future versions, use 0.2.2 for 1.4.x.
* Removed sections of README that deal with the Docker container itself to the [docker-couchdiscover](https://github.com/telephoneorg/docker-couchdiscover) repo.


## 0.2.2
### Dec 14, 2016
* Initial commit
