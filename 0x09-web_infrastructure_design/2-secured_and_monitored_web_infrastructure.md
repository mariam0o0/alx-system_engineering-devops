## Description

This is a 3-server web infrastructure that is secured, monitored, and serves encrypted traffic.

## Specifics About This Infrastructure

+ Additional elements, why adding them?<br/>An SSL certificate will be installed on the load balancer to enable HTTPS encryption for www.foobar.com.HTTPS encrypts data transmitted between the server and clients, ensuring confidentiality and integrity.Three firewalls will be implemented to enhance security by filtering and controlling incoming and outgoing traffic.
+ The purpose of the firewalls.<br/>Firewalls are essential for controlling network traffic, enforcing security policies, and protecting against unauthorized access, malware, and other threats.They inspect incoming and outgoing traffic, filter packets based on predefined rules, and block or allow traffic accordingly.
+ Why is the traffic served over HTTPS<br/>Serving traffic over HTTPS encrypts data transmitted between the server and clients, preventing eavesdropping, tampering, and man-in-the-middle attacks. It ensures the confidentiality and integrity of sensitive information, such as user credentials, payment details, and personal data.
+ What monitoring is used for<br/>Monitoring is practice used for quality control.Monitoring is used to track the health, performance, and availability of the infrastructure and applications. Monitoring tools collect data from various sources, including system metrics, application logs, and network traffic, to detect issues, troubleshoot problems, and optimize performance.
+ How the monitoring tool is collecting data<br/>Monitoring clients collect data by periodically querying system metrics, parsing logs, and capturing network traffic. They send collected data to a centralized monitoring platform, such as Sumo Logic, where it is analyzed, aggregated, and visualized for monitoring and analysis purposes.
+ Explain what to do if you want to monitor your web server QPS<br/>Queries per second is a measure of the rate of traffic going in a particular server serving a Web domain. It is an important metric to monitor, because it can help you decide whether to scale the server in order to cope with the demand of usage, and resource requirement so the web page won’t collapse in the future with overload server request.

## Issues With This Infrastructure

+ Terminating SSL at the load balancer level may introduce a single point of failure and increase the risk of unauthorized access to unencrypted traffic between the load balancer and backend servers.
+ Having only one MySQL server capable of accepting writes creates a single point of failure and increases the risk of data loss in case of server failure.
+ Having servers with all the same components (database, web server, application server) may lead to homogeneity and lack of diversity, making the infrastructure more susceptible to common vulnerabilities and attacks.
