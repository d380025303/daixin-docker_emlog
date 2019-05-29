# prepare
请在emlog官网( http://www.emlog.net/download )下载文, 将src文件夹拷贝到与Dockerfile同级下
```
--folder
  --Dockerfile
  --src
    --...
```
# Build Image
```
docker build -t emlog .
```
注意: emlog 后面有个'.'
# Run Container
```
docker run -d --name yourname -p yourport:80 -e MYSQL_PASS="youpassword" emlog
```
yourname: container名称  
yourport: 访问博客的端口号  
youpassword: mysql数据库密码 
# Create Database
```
docker exec -it yourname /bin/bash
```
```
mysql -uadmin -pyoupassword
mysql> create database emlog;
```
Done!
