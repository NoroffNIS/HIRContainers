HIR CONTAINERS
===============
auhor: oonray

This is a docker compose based implementation of a network with vulnerable services for use in HIR.
Use the makefile and follow the instuctions if any are given.

usage:
```bash
#Linux VM(recommended)
make linux
make networks
make start

#Kali VM
make kali
```

NOTE: You might have to add your user to sudoers and the docker group.

Its recomended to use a linux VM.
The containers can be used with OSX and Windows see the make file for instructions.

Remember to add routes in your kali box or set static routes in your router or firewall.

routes:
```bash
#Kali VM on the network of the Linux VM(recommended)
ip route 10.8.10.0/24 via <ip of VM> 
ip route 10.9.10.0/24 via <ip of VM> 
```

The dns server for the networks is located at 10.8.10.5.

Updates happen continously, as services are beeing added or improved, remember to pull or fetch!

Happy hunting!
