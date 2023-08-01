sudo touch /etc/ld.so.conf.d/local-lib.conf; echo include /home/$(whoami)/application/ld.so.conf.d/*.conf" | sudo tee --append /etc/ld.so.conf.d/local-lib.conf
