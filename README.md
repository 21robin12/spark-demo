## Prerequisites

using VS Code and Java extension to develop
need JDK from http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
install Maven (takes ~5 mins) https://www.mkyong.com/maven/how-to-install-maven-in-windows/

new project (creates pom.xml and src directory with tests)
mvn -B archetype:generate -DarchetypeGroupId=org.apache.maven.archetypes -DgroupId=com.beampipeline -DartifactId=beampipeline

had to manage pom.xml manually - added java v1.8 plugin and apache beam dependencies

### packaging up for Spark

mvn package