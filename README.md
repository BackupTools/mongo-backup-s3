# MongoDB 4.0 S3 docker/kubernetes backup

Docker image to backup MongoDB 4.0 to S3 using mongodump and compress using pigz.

## Configuration
```bash
S3_BUCK=mongo1-backups
S3_NAME=folder-name/backup-name-prefix
S3_URI=https://s3-key:s3-secret@s3.host.tld
MONGO_URI=mongodb://mongo-host:27017/db-name
```

Or see `docker-compose.yml` file to run this container with Docker.

## Cron backup with kubernetes

See `kubernetes.cronjob.yml` file.
