## Postmortem: Web Stack Outage on June 1, 2024

# Issue Summary
Duration of the Outage: June 1, 2024, 10:00 AM - 12:30 PM (EDT)

# Impact:
Our primary web application was inaccessible to users. Approximately 85% of users experienced inability to load the main page or faced severe loading delays.

# Root Cause:
A misconfiguration in the load balancer led to a failure in distributing traffic correctly across the servers, causing server overload and subsequent downtime.

# Timeline
10:05 AM: Issue detected by monitoring alert indicating high response time and error rates.
10:10 AM: Initial investigation by the on-call engineer focusing on application server logs.
10:20 AM: Misleading path taken, suspecting a database issue due to error patterns in logs.
10:30 AM: Escalated to the backend engineering team for deeper analysis.
10:45 AM: Network team involved after initial investigation revealed no issues with the database.
11:00 AM: Discovered a spike in server load; suspected a DDoS attack and implemented basic mitigation.
11:20 AM: Realized load balancer misconfiguration after reviewing network traffic distribution.
11:30 AM: Corrected the load balancer configuration.
12:00 PM: Restarted the affected servers and monitored recovery.
12:30 PM: Full service restored, and systems operating normally.

# Root Cause and Resolution

Root Cause:
The issue was caused by a misconfiguration in the load balancer settings. Specifically, a recent update to the load balancer's configuration script inadvertently set an incorrect parameter for traffic distribution, causing all traffic to be directed to a single server rather than being evenly distributed across multiple servers.

Resolution:
Upon identifying the misconfiguration, the network team corrected the load balancer settings to ensure proper traffic distribution. The steps included:

Updating the configuration script with the correct parameters.
Validating the configuration across all load balancers.
Restarting the load balancers to apply the new settings.
Gradually restarting the overloaded servers to ensure stability.
Monitoring the system closely to confirm the issue was resolved.

# Corrective and Preventative Measures

Improvements:

Configuration Management:

Implement a more rigorous peer review process for configuration changes.
Utilize configuration management tools to track and validate changes.
Monitoring Enhancements:

Enhance monitoring to include specific checks for load balancer health and traffic distribution metrics.
Set up more granular alerting to detect load balancer misconfigurations earlier.
Incident Response:

Develop and train on improved incident response playbooks, focusing on quicker identification of network-related issues.

# Task List:

Patch Load Balancer Configuration:

Review and correct the current load balancer configurations across all environments.
Schedule regular audits of configuration settings.
Add Monitoring:

Integrate monitoring for load balancer traffic distribution.
Set up alerts for unusual traffic patterns or server load.
Improve Documentation:

Update incident response documentation with learnings from this outage.
Ensure all teams are trained on the updated response protocols.
Conduct a Post-Incident Review:

Hold a review meeting with all involved teams to discuss what went wrong and how to prevent it in the future.
Create a detailed report of the incident for future reference and training purposes
