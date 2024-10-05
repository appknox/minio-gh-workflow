# Minio for Github Action

This repository provides an image to be used either for local testing or for Github workflows.

It extends the default [minio/minio](https://hub.docker.com/r/minio/minio) image.

The stay up to date with the base Minio image, this image here is update every day.

## How to use

See the example below how to use the image in a Github workflow.

```yaml
name: Test
on: [push]
jobs:
  tests:
    runs-on: ubuntu-latest
    services:
      minio:
        image: ghcr.io/hedge10/minio-gh-workflow:latest
        ports:
          - 9000:9000
        env:
          MINIO_ROOT_USER: minio
          MINIO_ROOT_PASSWORD: miniopassword123
        options: --name=minio --health-cmd "curl -I http://localhost:9000/minio/health/live"
    name: Tests
    steps:
      - name: Checkout
        uses: actions/checkout@v3
```