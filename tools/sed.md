## sed去空行和注释行
提醒：先备份
```
sed -i -c -e '/^$/d;/^#/d' config_file
```
