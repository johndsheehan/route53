Docker container for updating AWS Route53 record
================================================

Docker container containing a crontab entry. The entry runs
a shell script, which records the current public ip, and if
it has changed, updates the `route53` entry.

Requirements
============

- aws account and cli credentials (better to create a specific `IAM` role for this)
- docker

Quickstart
==========

- populate `config`, `credentials`, `route53.env`
- `docker built -t route53:latest .`
- `docker run  --name route53  --rm  route53:latest`
