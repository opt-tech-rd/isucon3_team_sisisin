#!/usr/bin/env bash

set -ef -o pipefail
readonly script_dir=$(cd "$(dirname "$0")" && pwd)
cd "$script_dir"

# 当該ブランチをローカルからoriginにpushした後、このスクリプトを動かせば良い
# ./deploy.sh topic-foo

branch=$1
if [[ $branch == "" ]]; then
    branch="master"
fi

echo "start deploying branch: $branch"

# ssh isu "cd /home/centos/isucon_ganbaruzoi_20180817; git fetch origin"

# for deployment notification
content="deployed branch: $branch"

curl -X POST -H 'Content-type: application/json' --data "{\"text\":\"$content\"}" https://hooks.slack.com/services/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
