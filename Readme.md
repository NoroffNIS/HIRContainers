HIR CONTAINERS
===============
auhor: oonray

This is a docker compose based implementation of a network with vulnerable services for use in HIR.
Use the makefile and follow the instuctions if any are given.

To install docker and the services use:
```bash
# if you are running it on a Linux Distro
make linux

#if you are running it directly in kali
make kali

```
NOTE: You might have to add your user to sudoers and the docker group.

Its recomended to use a linux VM.
The containers can be used with OSX and Windows see the make file for instructions.

You can now start the different nettworks together or seperatly.
To start all run:
```bash
make start
```

To start the red, blue or siem networks seperatly run:
```bash
make <name of service>
```

to stop the networks run:
```bash
make stop
```

routes:
```bash
#Kali VM on the network of the Linux VM(recommended)
ip route 10.8.10.0/24 via <ip of VM> 
ip route 10.9.10.0/24 via <ip of VM> 
ip route 10.11.10.0/24 via <ip of VM>
```

The dns server for the networks is located at 10.8.10.5.

Updates happen continously, as services are beeing added or improved, remember to pull or fetch!

Happy hunting!
