## sed去空行和注释行
提醒：先备份
```
cp config_file config_file.bak
sed -i -c -e '/^$/d;/^#/d' config_file
```
