#!/bin/bash
branch=${1:-master}

function slack() {
  curl -X POST -H 'Content-type: application/json' --data "{\"text\":\"$1\"}" https://hooks.slack.com/services/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
}

slack ":deploy: $branch"

ssh isu <<EOF
cd /home/isucon/torb/webapp/go; git fetch; git checkout origin/$branch
sudo systemctl stop torb.go
make
sudo systemctl start torb.go
EOF

slack ":kan: $branch"
