## 安装 mongodb


https://docs.mongodb.com/manual/installation/

### 选择性安装（CentOS）
不要使用 sudo yum install -y mongodb-org

···
sudo yum install -y mongodb-org-4.2.3 mongodb-org-server-4.2.3 mongodb-org-shell-4.2.3 mongodb-org-mongos-4.2.3 mongodb-org-tools-4.2.3
···

- mongodb-org-shell 客户端
- mongodb-org-tools 相关工具


### mongo 客户端连接指令 v4.2.3
 
mongo -u username 127.0.0.1:27017/dbname


### 创建非admin数据库账户


use dbname
db.createUser({user: "username", pwd: "password", roles: [{ role: "dbOwner", db: "dbname" }]})
