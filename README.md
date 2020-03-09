# Atlassian Bitbucket

Atlassian Bitbucket, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/bitbucket:7.0.1-alpine-3.11.3
2020/03/09 16:51:24 [INFO] ▶ Start clair-scanner
2020/03/09 16:51:31 [INFO] ▶ Server listening on port 9279
2020/03/09 16:51:31 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/03/09 16:51:33 [INFO] ▶ Analyzing cfa5e3dd2efe01860fc6b90c67ac1ad016add07b81fadaccafa0a441109e7760
2020/03/09 16:51:33 [INFO] ▶ Analyzing c34be4c32960d273a6e6ba446baa6deb5ccd2857894ac93a400ab1ebedec0fa8
2020/03/09 16:51:33 [INFO] ▶ Analyzing 8cd6207105211c31a349fefa8c51b2ee15b0849a24c884e7c9260ca8d99de907
2020/03/09 16:51:33 [INFO] ▶ Analyzing 7d702df185693df3ee2a4f929d49919bb370822e4f13b3dacf0af00efcda6e95
2020/03/09 16:51:33 [INFO] ▶ Analyzing 3d84aee06e72e5630a47374ee549427ad059e9504b2a6f45574765604b8b6e92
2020/03/09 16:51:34 [INFO] ▶ Image [secureimages/bitbucket:7.0.1-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.2 --no-progress secureimages/bitbucket:7.0.1-alpine-3.11.3
2020-03-09T14:51:42.150Z        INFO    Need to update DB
2020-03-09T14:51:42.151Z        INFO    Downloading DB...
2020-03-09T14:51:46.152Z        INFO    Reopening DB...
2020-03-09T14:52:04.922Z        INFO    Detecting Alpine vulnerabilities...

secureimages/bitbucket:7.0.1-alpine-3.11.3 (alpine 3.11.3)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/atlassian/bitbucket-server](https://hub.docker.com/r/atlassian/bitbucket-server)
```
docker pull atlassian/bitbucket-server:7.0.1
```

Security scanning using Clair
```
clair-scanner atlassian/bitbucket-server:7.0.1
2020/03/09 16:52:10 [INFO] ▶ Start clair-scanner
2020/03/09 16:52:26 [INFO] ▶ Server listening on port 9279
2020/03/09 16:52:26 [INFO] ▶ Analyzing 0a83f61838ece143b24a4555f0b9ee1cd45e1a9f4af16a5b2f714868b4ae6546
2020/03/09 16:52:26 [INFO] ▶ Analyzing 076ba28069d5d2c1520533138630ca87b29cb86ea460ab08a39df8b77d5425a0
2020/03/09 16:52:26 [INFO] ▶ Analyzing 70e53499a05a2ed55f7e0e8750870f3c5b2cd1fd5c5583086a1ba4dc9f3e5915
2020/03/09 16:52:26 [INFO] ▶ Analyzing a1a84f0f6a99a7d15e5b85e6d3df412ce94227aaee11a373667e9edad23f5646
2020/03/09 16:52:26 [INFO] ▶ Analyzing 1e9be6c544e5355c215d69dfa8fad2e58da26cef2fb7189a96b90d05fd84db77
2020/03/09 16:52:26 [INFO] ▶ Analyzing b8d5b49d2364cc3b5184d8e929d345f924601e12b7ccfa45cf4e7bc7a8f33897
2020/03/09 16:52:26 [INFO] ▶ Analyzing d7d24738d243ada245788257ccfc8e492d2c8ea65df3572ccf0783436617cba4
2020/03/09 16:52:26 [INFO] ▶ Analyzing 4526d01b1c2e9796e1dc86d163bba287c774c8f442b6e4b1243010ae6c0bd1b0
2020/03/09 16:52:26 [INFO] ▶ Analyzing 315be255dc9f9c432103f4a4e6d1854fa43dc25c341b8d0deaff9e0bf4abf709
2020/03/09 16:52:27 [INFO] ▶ Analyzing 7176924dc3a82c47e53d7b0251792fa69c2b2084351a39f795a847c6b3d639d5
2020/03/09 16:52:27 [INFO] ▶ Analyzing 29f3ea28a2f38d8d9b2c5e63da0393f43bea554011dc9a892eadc084e2117112
2020/03/09 16:52:27 [INFO] ▶ Analyzing 2507dc6aee6dbe753ad03d87fd775695c3d1d65ea8f4c759a2ebb328a5f01719
2020/03/09 16:52:27 [INFO] ▶ Analyzing 6e04b3bcb98e58dcc57457f9c1c01937a302d3b28c1197c7ce5ef2771a7d391d
2020/03/09 16:52:27 [INFO] ▶ Analyzing 50be6679b67a318e4d92f20e2053a6eb113caaa653791cc8ba763721cc51e90f
2020/03/09 16:52:27 [INFO] ▶ Analyzing be48afc8a4d94aad68f94996e6be5f706200d2305ebd4e4fcbb0b3bcb15fe4ee
2020/03/09 16:52:27 [INFO] ▶ Analyzing 25f0226f013b193bd6efa00145c48596bed94cfd6114482c95f2c7d627acd25e
2020/03/09 16:52:27 [WARN] ▶ Image [atlassian/bitbucket-server:7.0.1] contains 62 total vulnerabilities
2020/03/09 16:52:27 [ERRO] ▶ Image [atlassian/bitbucket-server:7.0.1] contains 62 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.2 --no-progress atlassian/bitbucket-server:7.0.1
2020-03-09T14:52:36.028Z        INFO    Need to update DB
2020-03-09T14:52:36.028Z        INFO    Downloading DB...
2020-03-09T14:52:40.051Z        INFO    Reopening DB...
2020-03-09T14:53:17.565Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/bitbucket-server:7.0.1 (ubuntu 18.04)
===============================================
Total: 208 (UNKNOWN: 0, LOW: 35, MEDIUM: 124, HIGH: 44, CRITICAL: 5)
```
