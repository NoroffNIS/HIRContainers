HIR CONTAINERS
===============
auhor: oonray

This is a docker compose based implementation of a network with vulnerable services for use in HIR.
Use the makefile and follow the instuctions if any are given.

usage:
```bash
make linux
make networks
docker-comose up
```

NOTE: You might have to add your user to sudoers and the docker group.

Its recomended to use a linux VM.
The containers can be used with OSX and Windows see the make file for instructions.

Remember to add routes in your kali box or set static routes in your router or firewall.
routes:
```bash
ip route 10.8.10.0/24 via <ip of VM> 
ip route 10.9.10.0/24 via <ip of VM> 
```
