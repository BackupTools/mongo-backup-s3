# MongoDB 4.0 S3 docker/kubernetes backup

[![Build status](https://github.com/BackupTools/mongo-backup-s3/workflows/Docker%20Image%20CI/badge.svg)]() [![Pulls](https://img.shields.io/docker/pulls/backuptools/mongo-backup-s3?style=flat&labelColor=1B3D4B&color=06A64F&logoColor=white&logo=docker&label=pulls)]()

Docker image to backup MongoDB 4.0 to S3 using mongodump and compress using pigz.

## Advantages/features
- [x] Supports custom S3 endpoints (e.g. minio)
- [x] Uses piping instead of tmp file
- [x] Compression is done with pigz (parallel gzip)
- [x] Creates bucket if it's not created
- [x] Can be run in Kubernetes or Docker
- [x] PGP encryption
- [ ] TODO: Add other compression methods
- [ ] TODO: Add other dbs (e.g. postgres, mysql)

## Configuration
```bash
S3_BUCK=mongo1-backups
S3_NAME=folder-name/backup-name-prefix
S3_URI=https://s3-key:s3-secret@s3.host.tld
MONGO_URI=mongodb://mongo-host:27017/db-name
GPG_KEYSERVER=keyserver.ubuntu.com # your hpks keyserver
GPG_KEYID=<key_id> # recipient key, backup will be encrypted if added
```

Or see `docker-compose.yml` file to run this container with Docker.

## Cron backup with kubernetes

See `kubernetes.cronjob.yml` file.
