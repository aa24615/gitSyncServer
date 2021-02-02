# GIT同步推拉


> 此项目将不再维护,将移步到获取最新版本 [https://github.com/aa24615/gitTools](https://github.com/aa24615/gitTools)


 这是一个本地仓库与服务器同步推拉的脚本

 随着git的便捷,我们不再使用ftp作为上传工具

 很多开发者都喜欢使用git推送到github或gitee上面,然后从服务器执行pull操作

 然而用久了还是有点小麻烦,当你push之后你又去开一个窗口登录ssh进去pull操作

 那是不是可以做到一推上去,服务器就自动pull呢 可以的!



### 使用方法

1.将 `gitSyncServer.sh` 用文本打开,修改对应参数

```
host="127.0.0.1" #服务器ip
user="root" #用户名
password="root" #密码
port="22" #端口
wwwroot="/www/test" #服务器上的目录

```

2.将这个脚本放在网站(仓库根目录下)

3.执行 `sh gitSyncServer.sh` 即可

4.如果有代码冲突等,请手动解决,下个版本解决这些问题


### 问题

1.因为时间问题,这个版本也是我自已暂时用的,后期会升级更新哈
