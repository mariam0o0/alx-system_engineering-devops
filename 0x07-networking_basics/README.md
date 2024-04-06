0x07. Networking basics #0
==========================

Tasks
-----

### 0\. OSI model

mandatory


OSI (Open Systems Interconnection) is an abstract model to describe layered communication and computer network design. The idea is to segregate the different parts of what make communication possible.

It is organized from the lowest level to the highest level:

-   The lowest level: layer 1 which is for transmission on physical layers with electrical impulse, light or radio signal
-   The highest level: layer 7 which is for application specific communication like SNMP for emails, HTTP for your web browser, etc

Keep in mind that the OSI model is a concept, it's not even tangible. The OSI model doesn't perform any functions in the networking process. It is a conceptual framework so we can better understand complex interactions that are happening. Most of the functionality in the OSI model exists in all communications systems.

![](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2018/6/4e6a0ad87a65d7054248.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20220121%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220121T224302Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=d330ec1c7a3deb699579a21949f2284f75faff40baec912e365e1d6267014de8)

In this project we will mainly focus on:

-   The Transport layer and especially TCP/UDP
-   On the Network layer with IP and ICMP

The image bellow describes more concretely how you can relate to every level.

![](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/0fc96bd99faa7941b18bcae4c5f90c6acd11791d.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20220121%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220121T224302Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=c79204ae1850dd3930fb69747ab1e1bbaf61e346db99b53625e0c0d7b55983b6)

Questions:

What is the OSI model?

1.  Set of specifications that network hardware manufacturers must respect
2.  The OSI model is a conceptual model that characterizes the communication functions of a telecommunication system without regard to their underlying internal structure and technology
3.  The OSI model is a model that characterizes the communication functions of a telecommunication system with a strong regard for their underlying internal structure and technology

How is the OSI model organized?

1.  Alphabetically
2.  From the lowest to the highest level
3.  Randomly

### 1\. Types of network

mandatory


![](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/4b995d4f8078b44afa968d68a98035d2bd7e8fac.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20220121%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220121T224302Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=d564d47f9b43d65c13ef006b9ce3cbb6fdc11439aece60bedfb8bd14b052a794)

LAN connect local devices together, WAN connects LANs together, and WANs are operating over the Internet.

Questions:

What type of network a computer in local is connected to?

1.  Internet
2.  WAN
3.  LAN

What type of network could connect an office in one building to another office in a building a few streets away?

1.  Internet
2.  WAN
3.  LAN

What network do you use when you browse www.google.com from your smartphone (not connected to the Wifi)?

1.  Internet
2.  WAN
3.  LAN


### 2\. MAC and IP address

mandatory


![](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/1e348ba3bcbb094b02922f821ffeb3d8c5438b7b.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20220121%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220121T224302Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=0d51c8ae0531cd931242e5853116bc8f00257636de055d02b932d90309c93750)

Questions:

What is a MAC address?

1.  The name of a network interface
2.  The unique identifier of a network interface
3.  A network interface

What is an IP address?

1.  Is to devices connected to a network what postal address is to houses
2.  The unique identifier of a network interface
3.  Is a number that network devices use to connect to networks

### 3\. UDP and TCP

mandatory


![](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/3d92e3c4a470f8ecf4c73db511fcbbadaa002e1c.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20220121%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220121T224302Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=857b44c3dace1108567eabb63260ae718c081e04192d23a6c167fa1ad73cbfed)

Let's fill the empty parts in the drawing above.

Questions:

-   Which statement is correct for the TCP box:
    1.  `It is a protocol that is transferring data in a slow way but surely`
    2.  `It is a protocol that is transferring data in a fast way and might loss data along in the process`
-   Which statement is correct for the UDP box:
    1.  `It is a protocol that is transferring data in a slow way but surely`
    2.  `It is a protocol that is transferring data in a fast way and might loss data along in the process`
-   Which statement is correct for the TCP worker:
    1.  `Have you received boxes x, y, z?`
    2.  `May I increase the rate at which I am sending you boxes?`

### 4\. TCP and UDP ports

mandatory


Once packets have been sent to the right network device using IP using either UDP or TCP as a mode of transportation, it needs to actually enter the network device.

If we continue the comparison of a network device to your house, where IP address is like your postal address, UDP and TCP ports are like the windows and doors of your place. A TCP/UDP network device has 65535 ports. Some of them are officially reserved for a specific usage, some of them are known to be used for a specific usage (but nothing is officially declared) and the rest are free of use.

While the full list of ports should not be memorized, it is important to know the most used ports, let's start by remembering 3 of them:

-   **22** for SSH
-   **80** for HTTP
-   **443** for HTTPS

Note that a specific [IP + port = socket](https://alx-intranet.hbtn.io/rltoken/tMKODilbDVpB8EgfIRDJVw "IP + port = socket").

Write a Bash script that displays listening ports:

-   That only shows listening sockets
-   That shows the PID and name of the program to which each socket belongs

Example:

```
sylvain@ubuntu$ sudo ./4-TCP_and_UDP_ports
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
tcp        0      0 *:sunrpc                *:*                     LISTEN      518/rpcbind
tcp        0      0 *:ssh                   *:*                     LISTEN      1240/sshd
tcp        0      0 *:32938                 *:*                     LISTEN      547/rpc.statd
tcp6       0      0 [::]:sunrpc             [::]:*                  LISTEN      518/rpcbind
tcp6       0      0 [::]:ssh                [::]:*                  LISTEN      1240/sshd
tcp6       0      0 [::]:33737              [::]:*                  LISTEN      547/rpc.statd
udp        0      0 *:sunrpc                *:*                                 518/rpcbind
udp        0      0 *:691                   *:*                                 518/rpcbind
udp        0      0 localhost:723           *:*                                 547/rpc.statd
udp        0      0 *:60129                 *:*                                 547/rpc.statd
udp        0      0 *:3845                  *:*                                 562/dhclient
udp        0      0 *:bootpc                *:*                                 562/dhclient
udp6       0      0 [::]:47444              [::]:*                              547/rpc.statd
udp6       0      0 [::]:sunrpc             [::]:*                              518/rpcbind
udp6       0      0 [::]:50038              [::]:*                              562/dhclient
udp6       0      0 [::]:691                [::]:*                              518/rpcbind
Active UNIX domain sockets (only servers)
Proto RefCnt Flags       Type       State         I-Node   PID/Program name    Path
unix  2      [ ACC ]     STREAM     LISTENING     7724     518/rpcbind         /run/rpcbind.sock
unix  2      [ ACC ]     STREAM     LISTENING     6525     1/init              @/com/ubuntu/upstart
unix  2      [ ACC ]     STREAM     LISTENING     8559     835/dbus-daemon     /var/run/dbus/system_bus_socket
unix  2      [ ACC ]     STREAM     LISTENING     9190     1087/acpid          /var/run/acpid.socket
unix  2      [ ACC ]     SEQPACKET  LISTENING     7156     378/systemd-udevd   /run/udev/control
sylvain@ubuntu$

```
### 5\. Is the host on the network

mandatory


![](https://media.giphy.com/media/uDxkJAVSU7GY8/giphy.gif)

The Internet Control Message Protocol (ICMP) is a protocol in the Internet protocol suite. It is used by network devices, to check if other network devices are available on the network. The command `ping` uses ICMP to make sure that a network device remains online or to troubleshoot issues on the network.

Write a Bash script that pings an IP address passed as an argument.

Requirements:

-   Accepts a string as an argument
-   Displays `Usage: 5-is_the_host_on_the_network {IP_ADDRESS}` if no argument passed
-   Ping the IP 5 times

Example:

```
sylvain@ubuntu$ ./5-is_the_host_on_the_network 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=63 time=12.9 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=63 time=13.6 ms
64 bytes from 8.8.8.8: icmp_seq=3 ttl=63 time=7.83 ms
64 bytes from 8.8.8.8: icmp_seq=4 ttl=63 time=11.3 ms
64 bytes from 8.8.8.8: icmp_seq=5 ttl=63 time=7.57 ms

--- 8.8.8.8 ping statistics ---
5 packets transmitted, 5 received, 0% packet loss, time 4006ms
rtt min/avg/max/mdev = 7.570/10.682/13.679/2.546 ms
sylvain@ubuntu$
sylvain@ubuntu$ ./5-is_the_host_on_the_network
Usage: 5-is_the_host_on_the_network {IP_ADDRESS}
sylvain@ubuntu$

```

It is interesting to look at the `time` value, which is the time that it took for the ICMP request to go to the `8.8.8.8` IP and come back to my host. The IP `8.8.8.8` is owned by Google, and the quickest roundtrip between my computer and Google was 7.57 ms which is pretty fast, which is a sign that the network path between my computer and Google's datacenter is in good shape. A slow ping would indicate a slow network.

Next time you feel that your connection is slow, try the `ping` command to see what is going on!

