
#!/bin/bash
cd ~/workspace/QBox/
./vsftpd_v1 vsftpd.conf &
pidof vsftpd_v1
HOST="0.0.0.0 8081"
USER="crio-user"
PASSWORD='4gkdmqHcYTer02'
cd ~/ftp_server/
ftp -inv $HOST <<EOF
ascii
user $USER $PASSWORD
cd ftp_client
bye
EOF

