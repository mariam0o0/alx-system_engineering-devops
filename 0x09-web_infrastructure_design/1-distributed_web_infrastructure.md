
## Description

This is a distributed web infrastructure that atttempts to reduce the traffic to the primary server by distributing some of the load to a replica server with the aid of a server responsible for balancing the load between the two servers (primary and replica).

## Specifics About This Infrastructure

+For additional element, why you are adding it?<br/>The addition of multiple servers, load balancer, and database cluster enhances the infrastructure's scalability, fault tolerance, and performance.
+ The distribution algorithm the load balancer is configured with and how it works.<br/>Our load-balancer is using a Round Robin algorithm distribution. Meaning the queries requested are distributed to every server sequentially one after another. And after sending the request to the last server, the algorithm startarts from the first server. This will bring on average and approximately, to a server load distribution of 50% on each of the two servers configuration.
+ The setup enabled by the load-balancer.<br/>Our load-balancer is enabling an Active-Active set up.The Active-Active cluster is typically made up of at least two nodes, both activaley running the same type of services at the same time. Their purpose is to achieve load balancing by distributing tasks to different servers in order to prevent overload. As there are more than one servers (nodes) available to severe, the service time and process throughput can have improvements. On the other hand the Active-Passive setup, also made up of at least two nodes (servers), however not all nodes are going to be active simultaneously. In this configuration, while one node is active, the other nodes (failover servers) are passively waiting to be active as backup in case the primary server (the one being in use actively) is disconnected or unable to serve.
+ How a database *Primary-Replica* (*Master-Slave*) cluster works.<br/>A A database Primary-Replica (Master-Slave) cluster, also known as replication, is a configuration in which a primary (master) database server replicates its data to one or more secondary (replica) database servers. This setup provides data redundancy, fault tolerance, and load distribution for database operations.
+ What is the difference between the Primary node and the Replica node in regard to the application<br/>that the primary database is regarded as the authoritative source, while the replica database is synchronized to it. The primary node serves as the keeper of information, here the “real” data is kept, then writing only happens here. On the other hand, reading only occurs in the replica or slave node. This architecture purpose is due to safeguard site reliability. In case a site receives a lot of traffic, a replica node prevents overloading of the master node with reading and writing requests.

## Issues With This Infrastructure

+ Where are SPOF<br/>Despite the addition of multiple servers, there may still be single points of failure, such as the load balancer or database Primary node, which can impact overall availability.
+ Security issues (no firewall, no HTTPS)<br/>The infrastructure lacks proper security measures such as a firewall and HTTPS encryption, leaving it vulnerable to attacks and data breaches.
+ No monitoring<br/>Without monitoring tools in place, it's challenging to identify and address performance issues, resource bottlenecks, or security threats proactively.
