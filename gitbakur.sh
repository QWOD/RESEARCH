#!/usr/bin/env bash
sshHost=secure.us.hyperspire.net
localPath=/home/hyperuser
ssh ${sshHost} -o "StrictHostKeyChecking no" -t ${localPath}/hyperstor/bin/gitupur pull
