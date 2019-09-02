#!/bin/bash
branch=${1:-master}

function slack() {
  curl -X POST -H 'Content-type: application/json' --data "{\"text\":\"$1\"}" https://hooks.slack.com/services/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
}

slack ":deploy: $branch"

ssh isu "cd /home/isucon/torb/webapp/go; git fetch; git checkout origin/$branch"
ssh isu "sudo systemctl stop torb.go"
ssh isu "make"
ssh isu "sudo systemctl start torb.go"

slack ":kan: $branch"
