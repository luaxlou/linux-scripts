安装gitlab ce 版本


### CentOS7
#### 国外服务器

https://about.gitlab.com/install/#centos-7?version=ce


#### 国内服务器


https://mirror.tuna.tsinghua.edu.cn/help/gitlab-ce/

### CentOS8
sudo dnf install -y curl policycoreutils openssh-server perl  
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | sudo bash  
sudo dnf install postfix  
systemctl enable postfix  
systemctl start postfix  
sudo EXTERNAL_URL="https://gitlab.example.com" dnf install -y gitlab-ce  

cat /etc/gitlab/initial_root_password

gitlab-ctl status
