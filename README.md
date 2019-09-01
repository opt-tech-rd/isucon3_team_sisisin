# isucon3_team_sisisin

社内isucon3用

## /dev

### /docker

docker-compose upでmysql,psql,redisが立ち上がるようになってます

how to connect

```console
mysql -uroot -h 127.0.0.1 -p # pass: root
psql -h 127.0.0.1
redis-cli
```

# 初手やること

## serverにssh鍵設定

```
wget https://github.com/sisisin.keys >> ~/.ssh/authorized_keys
wget https://github.com/matzkoh.keys >> ~/.ssh/authorized_keys
wget https://github.com/kadokusei.keys >> ~/.ssh/authorized_keys
```

## 各自のssh config更新

ssh config例
**Hostはデプロイで利用するので変更しちゃダメ**

```
Host isu
  User xxxx
  HostName xxx.xxx.xxx.xxx
  IdentityFile ~/.ssh/github_id_rsa
  IdentitiesOnly yes
```

