#!/usr/bin/env bash

sshHost=secure.us.hyperspire.net

ssh ${sshHost} -o "StrictHostKeyChecking no" -t "~/hyperstor/QWOD/RESEARCH/figtreeservice-remote.sh start"