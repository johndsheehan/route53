Docker container for updating AWS Route53 record
================================================

Docker container containing a crontab entry. The entry runs
a shell script, which records the current public ip, and if
it has changed, updates the ``route53`` entry.

Requirements
============

- aws account and cli credentials (better to create a specific `IAM` role for this)
- docker

Quickstart
==========

- populate ``aws/config``, ``aws/credentials``, ``env/route53.env``
- ``docker build -t route53:latest .``
- ``docker run  --name route53  --rm  -v /full/path/to/route53/aws/:/root/.aws  -v /full/path/to/route53/env/:/root/.env  route53:latest``
