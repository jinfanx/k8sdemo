# k8sdemo
kubernetes和docker实践笔记

## Apache-servicecomb-service-center
servicecomb官方的service-center不带前台页面，自制包含frontend的service-center，已发布到dockerhub。  
使用： 
```bash
docker run -d -p 30103:30103 -p 30100:30100 jinfanx/servicecomb-service-center:1.3.0 

```
dockerhub: [jinfanx/servicecomb-service-center:1.3.0](https://hub.docker.com/repository/docker/jinfanx/servicecomb-service-center)
