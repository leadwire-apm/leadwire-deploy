# swarm init
```docker swarm init```

# Elasticsearch-max-virtual-memory
sysctl -w vm.max_map_count=262144

#Configure Firewall : open ports 7946, 4789, 2376, 2377, 443 and 80 on the firewall for a swarm cluster to work properly.
firewall-cmd --permanent --add-port=2376/tcp
firewall-cmd --permanent --add-port=2377/tcp
firewall-cmd --permanent --add-port=7946/tcp
firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --permanent --add-port=443/tcp
firewall-cmd --permanent --add-port=7946/udp
firewall-cmd --permanent --add-port=4789/udp

# Reload the firewall and Docker service to apply all the changes:
firewall-cmd --reload

systemctl enable docker
systemctl restart docker

# leadwire-deploy
```sh leadwire_start```
