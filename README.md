# 更新代码后重新打包镜像
  ```
  docker build --no-cache -t dataturks/dataturks:2.0.0 -f ./Dockerfile ./
  ```
# 本地启动docker
  ```
  docker run -d -p 80:80 dataturks/dataturks:2.0.0
  ```
