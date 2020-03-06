# Atlassian Bitbucket

Atlassian Bitbucket, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/bitbucket:7.0.0-alpine-3.11.3
2020/03/06 23:09:28 [INFO] ▶ Start clair-scanner
2020/03/06 23:09:41 [INFO] ▶ Server listening on port 9279
2020/03/06 23:09:41 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/03/06 23:09:42 [INFO] ▶ Analyzing 0665b2f3bb41de6673b9cf484ea9de83c703694514de842bb290945e0ea5f085
2020/03/06 23:09:43 [INFO] ▶ Analyzing d999df519847dfb0e0dc4ba1f62260a7f988d893cbf6ecb6146f0ec234c41f20
2020/03/06 23:09:43 [INFO] ▶ Analyzing 96cef27fa764e1033d6123c19082f62231757f147a740b13d3088121b9262d5f
2020/03/06 23:09:43 [INFO] ▶ Analyzing b31b8d22d49c38ea66252c08c901355250051674edffbdcfd21fa29cdfc00486
2020/03/06 23:09:43 [INFO] ▶ Analyzing 93ac7377737075b27ed10b0906fb716bf86ada54d1bd57b046572d629a75d54b
2020/03/06 23:09:44 [INFO] ▶ Image [secureimages/bitbucket:7.0.0-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.2 --no-progress secureimages/bitbucket:7.0.0-alpine-3.11.3
2020-03-06T21:09:52.702Z        INFO    Need to update DB
2020-03-06T21:09:52.702Z        INFO    Downloading DB...
2020-03-06T21:09:56.814Z        INFO    Reopening DB...
2020-03-06T21:10:15.683Z        INFO    Detecting Alpine vulnerabilities...

secureimages/bitbucket:7.0.0-alpine-3.11.3 (alpine 3.11.3)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/atlassian/bitbucket-server](https://hub.docker.com/r/atlassian/bitbucket-server)
```
docker pull atlassian/bitbucket-server:7.0.0
```

Security scanning using Clair
```
clair-scanner atlassian/bitbucket-server:7.0.0
2020/03/06 23:10:22 [INFO] ▶ Start clair-scanner
2020/03/06 23:10:57 [INFO] ▶ Server listening on port 9279
2020/03/06 23:10:57 [INFO] ▶ Analyzing 0a83f61838ece143b24a4555f0b9ee1cd45e1a9f4af16a5b2f714868b4ae6546
2020/03/06 23:10:57 [INFO] ▶ Analyzing 076ba28069d5d2c1520533138630ca87b29cb86ea460ab08a39df8b77d5425a0
2020/03/06 23:10:57 [INFO] ▶ Analyzing 70e53499a05a2ed55f7e0e8750870f3c5b2cd1fd5c5583086a1ba4dc9f3e5915
2020/03/06 23:10:57 [INFO] ▶ Analyzing a1a84f0f6a99a7d15e5b85e6d3df412ce94227aaee11a373667e9edad23f5646
2020/03/06 23:10:57 [INFO] ▶ Analyzing 1e9be6c544e5355c215d69dfa8fad2e58da26cef2fb7189a96b90d05fd84db77
2020/03/06 23:10:57 [INFO] ▶ Analyzing b8d5b49d2364cc3b5184d8e929d345f924601e12b7ccfa45cf4e7bc7a8f33897
2020/03/06 23:10:57 [INFO] ▶ Analyzing d7d24738d243ada245788257ccfc8e492d2c8ea65df3572ccf0783436617cba4
2020/03/06 23:10:57 [INFO] ▶ Analyzing ba61d7474109b4cb5fb6251228fb764fea13aff0d475c8b23ff16ec8d60b89ef
2020/03/06 23:10:57 [INFO] ▶ Analyzing ab4bb927d152dec85a7fc0db6f4185993b7932e46987118e49673d32cf121b65
2020/03/06 23:10:58 [INFO] ▶ Analyzing 2f8ca86abd0d38fc2248fca9fda5f103d369af45138552bcdade5c9fda0005cc
2020/03/06 23:10:58 [INFO] ▶ Analyzing a1bb035362d432cb549a573d5309446ceea80d862f793397a96e3f4cbc968cb6
2020/03/06 23:10:58 [INFO] ▶ Analyzing ea6a69ac0718bded723cbca680e2b727e233f54f2ef5221b3d06be32705cb259
2020/03/06 23:10:58 [INFO] ▶ Analyzing a1a82e2092ddc14fdd9585dd55d73b51a88068add8670c91e369b5d6eba376d3
2020/03/06 23:10:58 [INFO] ▶ Analyzing 950f04c93396d2cca9bed24db7e90b1e48030c88fca03d803dee15f637202585
2020/03/06 23:10:58 [INFO] ▶ Analyzing 279590b25c97635e4195ff33fcc39147f98e04ba466658aeb8d0e4d456fede9f
2020/03/06 23:10:58 [INFO] ▶ Analyzing 6fa0c527093efc8d9b637c802752755771784947341a556aea3e5feb6507768d
2020/03/06 23:10:58 [WARN] ▶ Image [atlassian/bitbucket-server:7.0.0] contains 61 total vulnerabilities
2020/03/06 23:10:58 [ERRO] ▶ Image [atlassian/bitbucket-server:7.0.0] contains 61 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.2 --no-progress atlassian/bitbucket-server:7.0.0
2020-03-06T21:11:01.286Z        INFO    Need to update DB
2020-03-06T21:11:01.286Z        INFO    Downloading DB...
2020-03-06T21:11:05.980Z        INFO    Reopening DB...
2020-03-06T21:11:45.229Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/bitbucket-server:7.0.0 (ubuntu 18.04)
===============================================
Total: 207 (UNKNOWN: 0, LOW: 35, MEDIUM: 123, HIGH: 44, CRITICAL: 5)
```
