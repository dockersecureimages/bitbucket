# Atlassian Bitbucket

Atlassian Bitbucket, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/bitbucket:6.9.1-alpine-3.11.2
2020/01/16 10:39:21 [INFO] ▶ Start clair-scanner
2020/01/16 10:39:28 [INFO] ▶ Server listening on port 9279
2020/01/16 10:39:28 [INFO] ▶ Analyzing 30a36bc16c80b7f41fbae0f2a65857845a322dc98c11b67026ab338cdd2642c8
2020/01/16 10:39:29 [INFO] ▶ Analyzing 1416ea81dc43e77f997f03d2feb4e1d595285c98cad2b5937475a64084144bc4
2020/01/16 10:39:29 [INFO] ▶ Analyzing 303e49d4a3e75ff19e5541734fd7ba594e00b6c23d90f74c31f7062b3f8451d3
2020/01/16 10:39:30 [INFO] ▶ Analyzing 6f6c86f82119b240f908789d7ea58096ba2b6d5d7b13546b3bd7467717578bea
2020/01/16 10:39:30 [INFO] ▶ Analyzing 3aaed485316da61b1fdae02f1a6d48ece7c9b6a84a4a49d9848795ebe87ced31
2020/01/16 10:39:30 [INFO] ▶ Analyzing e9ef91d6b11ae4dbf1583d107e7dcdacebded4fdfa21db2a30ef986179a2bde7
2020/01/16 10:39:30 [INFO] ▶ Analyzing 48afc4cb1a3040644464c4db677f8775fdbd19177ada94ea31c8c603d33fd2e7
2020/01/16 10:39:30 [INFO] ▶ Image [secureimages/bitbucket:6.9.1-alpine-3.11.2] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress secureimages/bitbucket:6.9.1-alpine-3.11.2
2020-01-16T08:41:01.744Z        INFO    Need to update DB
2020-01-16T08:41:01.744Z        INFO    Downloading DB...
2020-01-16T08:41:05.251Z        INFO    Reopening DB...
2020-01-16T08:41:36.958Z        INFO    Detecting Alpine vulnerabilities...

secureimages/bitbucket:6.9.1-alpine-3.11.2 (alpine 3.11.2)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/atlassian/bitbucket-server](https://hub.docker.com/r/atlassian/bitbucket-server)
```
docker pull atlassian/bitbucket-server
```

Security scanning using Clair
```
clair-scanner atlassian/bitbucket-server:6.9.1
2020/01/16 10:33:56 [INFO] ▶ Start clair-scanner
2020/01/16 10:34:10 [INFO] ▶ Server listening on port 9279
2020/01/16 10:34:10 [INFO] ▶ Analyzing 07ac7ec391137e61e19e91d1021b02adb5162b41f76ab299e641f21157408db7
2020/01/16 10:34:10 [INFO] ▶ Analyzing 372a325e7e99e7290ad127e2d75302a3cf9e44a16da67eb176b00c289eb12569
2020/01/16 10:34:10 [INFO] ▶ Analyzing ba7a82b51caab0d8ec7ba13e02cfbf110ef4ab1330164964b8d54fe456cd24d5
2020/01/16 10:34:10 [INFO] ▶ Analyzing ee8eca206af765a26428d3b73d2f6e0e5903b30abf1eb3a35a5141cdff4b695a
2020/01/16 10:34:10 [INFO] ▶ Analyzing 5071a0c98c5474717729862112cbe99b8a63b37bd8f3ba9e84a5715434806036
2020/01/16 10:34:10 [INFO] ▶ Analyzing a19c8b70359a66c96c74bed049fda8c7f4c907177c9d45fe382d9603cfca9a56
2020/01/16 10:34:10 [INFO] ▶ Analyzing 0836b02634211829768abbe3a938ce14ad1dc15dbdf3f83f22141c157334c82e
2020/01/16 10:34:10 [INFO] ▶ Analyzing 4ff156ca36b06cbd3dc9f350b13198a4f9f3151b8fef2ff0a6185ed6a3a6352e
2020/01/16 10:34:10 [INFO] ▶ Analyzing 47ae75c5db65ce14906f5f0e054aac7aa3f096fca272af61401f2648201d00ab
2020/01/16 10:34:11 [INFO] ▶ Analyzing ec3b77fb4ef8c96202fd8c320a40aba62265dce25b824b2bae6de4e2ce1c5cd1
2020/01/16 10:34:11 [INFO] ▶ Analyzing 1e24c3c32513322589873ec20c820d0818fc7aa902f1dc44d736cc9d82f08dc0
2020/01/16 10:34:11 [INFO] ▶ Analyzing 8a8b41f34b420c834bb007200df915474e68ebe6ca28e3f8a8612edf341a9de3
2020/01/16 10:34:11 [INFO] ▶ Analyzing ee0fcf7f7a0a0bc06155bb0ea938db5bc0b234734d0b1f8703549d1709481685
2020/01/16 10:34:11 [INFO] ▶ Analyzing 526eac604898271054bb0531b654e9aff135cccdf9b73dadb1cf6ab9387f711a
2020/01/16 10:34:11 [INFO] ▶ Analyzing be3cdeec1d3f34ae1221af02fc841edbe176137b0b83b2e5f80cef1970ce754c
2020/01/16 10:34:11 [INFO] ▶ Analyzing 119a5b484078740c1f362849740ac36c8e98c7202ac71996d7d15e638881f972
2020/01/16 10:34:11 [WARN] ▶ Image [atlassian/bitbucket-server:6.9.1] contains 52 total vulnerabilities
2020/01/16 10:34:11 [ERRO] ▶ Image [atlassian/bitbucket-server:6.9.1] contains 52 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress atlassian/bitbucket-server:6.9.1
2020-01-16T08:30:14.383Z        INFO    Need to update DB
2020-01-16T08:30:14.383Z        INFO    Downloading DB...
2020-01-16T08:30:19.391Z        INFO    Reopening DB...
2020-01-16T08:30:24.808Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/bitbucket-server:6.9.1 (ubuntu 18.04)
===============================================
Total: 205 (UNKNOWN: 0, LOW: 33, MEDIUM: 115, HIGH: 53, CRITICAL: 4)
```
