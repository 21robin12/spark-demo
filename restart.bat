docker container stop spark
docker container prune --force
docker run -it -d -p 4040:4040 -p 4041:4041 -p 8080:8080 -p 8081:8081 -p 7077:7077 -h spark --name=spark p7hb/docker-spark
docker exec -it spark mkdir /shared
docker cp %~dp0\target\beampipeline-0.1-jar-with-dependencies.jar spark:/shared/
docker cp %~dp0\input.txt spark:/shared/
docker exec -it spark start-master.sh
docker exec -it spark start-slave.sh spark://spark:7077  
docker exec -it spark spark-submit --class com.beampipeline.MinimalWordCount --master spark://spark:7077 /shared/beampipeline-0.1-jar-with-dependencies.jar /shared/input.txt
docker exec -it spark bash