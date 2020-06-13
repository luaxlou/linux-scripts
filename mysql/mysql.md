## 创建库并分配用户

```
CREATE DATABASE IF NOT EXISTS dbname DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_general_ci;
grant all privileges on dbname.* to username@'%'  identified by 'password';
flush privileges;
```

## 查询锁

select * from information_schema.innodb_trx;

