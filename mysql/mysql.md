## 创建库并分配用户

mysql5

```
CREATE DATABASE IF NOT EXISTS dbname DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_general_ci;
grant all privileges on dbname.* to username@'%'  identified by 'password';
flush privileges;

```

mysql8

```
CREATE USER 'username'@'%' IDENTIFIED WITH mysql_native_password BY 'pass';
grant all privileges on dbname.* to username@'%' ;
```

## 查询锁

select * from information_schema.innodb_trx;


## 统计所有数据库存储

```
use information_schema;  
SELECT   
    TABLE_SCHEMA,
    sum(DATA_LENGTH/1024/1024/1024) as DataG ,  
    sum((INDEX_LENGTH/1024/1024/1024)) as IndexG,   
    sum(((DATA_LENGTH+INDEX_LENGTH)/1024/1024/1024)) as AllG,  
    sum(TABLE_ROWS )
FROM TABLES 
group by TABLE_SCHEMA   
order by AllG desc;
```
