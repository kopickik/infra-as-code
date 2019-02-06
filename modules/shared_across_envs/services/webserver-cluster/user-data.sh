#!/bin/bash

cat > index.html <<EOF
<h1>Hello web servers.</h1>
<p>DB address: ${db_adress}</p>
<p>DB port: ${db_port}</p>
EOF

nohup busybox httpd -f -p "${server_port}" &