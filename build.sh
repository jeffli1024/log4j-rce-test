cd marshalsec
mvn clean package -DskipTests
cp target/marshalsec-0.0.3-SNAPSHOT-all.jar ../

cd ../apache-log4j-poc
mvn clean package
cp target/log4j-rce-1.0-SNAPSHOT-all.jar ../
cp target/classes/Exploit.class ../
