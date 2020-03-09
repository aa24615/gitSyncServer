
#!/usr/bin/bash

###############################
##   一键登录SSH并执行相关命令   ##
###############################

host="127.0.0.1" #服务器ip
user="root" #用户名
password="root" #密码
port="22" #端口
wwwroot="/www/test" #服务器上的目录


echo "======================================"
echo "==============GIT同步推拉=============";
echo "======================================"


git status
git add .
git commit -m 'test'
git push origin master

file="/tmp/.login.sh";

echo '#!/usr/bin/expect -f' > $file
echo 'set timeout 30' >> $file
echo 'trap {' >> $file
echo '    set rows [stty rows]' >> $file
echo '    set cols [stty columns]' >> $file
echo '    stty rows $rows columns $cols < $spawn_out(slave,name)' >> $file
echo '} WINCH' >> $file
echo "spawn ssh -p$port -l $user $host" >> $file
echo 'expect "password:"' >> $file
echo 'send   "'$password'\r"' >> $file
echo 'expect "#*"' >> $file
echo 'send   "pwd\r"' >> $file
echo 'expect "#*"' >> $file
echo 'send   "git pull\r"' >> $file
echo 'expect "#*"' >> $file
echo 'send   "exit\r"' >> $file

echo "interact" >> $file


chmod a+x $file

expect $file

echo '' > $file
