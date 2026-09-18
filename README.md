# alpine-curl-jq

This repository contains a core alpine image with a few utilities installed on it for use in CI or other jobs.

[![ci](https://github.com/mmansell83/alpine-curl-jq/actions/workflows/main.yml/badge.svg)](https://github.com/mmansell83/alpine-curl-jq/actions/workflows/main.yml)

## Usage

To-do

## Build with podman

```bash
podman build --arch amd64 --layers --force-rm --tag alpine-curl-jq:test -f Dockerfile
```

## CI checks

CI builds an amd64 image into the local Docker daemon, checks that each bundled tool runs, and scans the image with Trivy before anything is pushed. Pull requests build and scan but never push. Trivy results appear in the job summary (HIGH and CRITICAL) and under **Security > Code scanning**. Findings do not fail the job.
