## 配置smtp 163.com



```
gitlab_rails['smtp_enable'] = true
gitlab_rails['smtp_address'] = "smtp.163.com" #重点，这两处和网上其他教程都不一样
gitlab_rails['smtp_port'] = 465 #重点
gitlab_rails['smtp_user_name'] = "luaxlou@163.com"
gitlab_rails['smtp_password'] = "授权码，设置里申请"
gitlab_rails['smtp_domain'] = "163.com"
gitlab_rails['smtp_authentication'] = "login"
gitlab_rails['smtp_enable_starttls_auto'] = true
gitlab_rails['smtp_tls'] = true
gitlab_rails['gitlab_email_from'] = 'luaxlou@163.com'
user["git_user_email"] = "luaxlou@163.com"
```



···
Notify.test_email('luaxlou@163.com', 'Test Page', 'This is test mail').deliver_now
···


测试成功