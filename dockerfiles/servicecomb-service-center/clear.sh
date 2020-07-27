#! /bin/bash
set +e
docker ps -a|grep -E "Exited|servicecomb"|awk '{print $1}'|xargs docker stop|xargs docker rm 2>/dev/null
docker images|grep none|awk '{print $3}'|xargs docker rmi 2>/dev/null
docker images|grep servicecomb|awk '{print $3}'|xargs docker rmi 2>/dev/null
