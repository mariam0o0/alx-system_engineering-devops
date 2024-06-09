# Postmortem: Web Stack Outage on June 1, 2024

## Issue Summary
- **Duration of the Outage:** June 1, 2024, 10:00 AM - 12:30 PM (EDT)
- **Impact:** Our primary web application was inaccessible to users. Approximately 85% of users experienced inability to load the main page or faced severe loading delays.
- **Root Cause:** A misconfiguration in the load balancer led to a failure in distributing traffic correctly across the servers, causing server overload and subsequent downtime.

## Timeline
| 10:05 AM | Monitoring alert triggered due to high response times and error rates |
| 10:10 AM | On-call engineer begins investigation with application server logs |
| 10:20 AM | Misleading path taken: suspected database issue due to error patterns |
| 10:30 AM | Escalated to backend engineering team |
| 10:45 AM | Network team involved after initial investigation reveals no database issues |
| 11:00 AM | Suspected DDoS attack, basic mitigation steps implemented |
| 11:20 AM | Load balancer misconfiguration identified, network traffic distribution reviewed |
| 11:30 AM | Load balancer configuration corrected |
| 12:00 PM | Affected servers restarted and monitored |
| 12:30 PM | Full service restored, systems operating normally |


## Root Cause and Resolution

**Root Cause:**
The issue was caused by a misconfiguration in the load balancer settings. Specifically, a recent update to the load balancer's configuration script inadvertently set an incorrect parameter for traffic distribution, causing all traffic to be directed to a single server rather than being evenly distributed across multiple servers.

**Resolution:**
Upon identifying the misconfiguration, the network team corrected the load balancer settings to ensure proper traffic distribution. The steps included:
1. Updating the configuration script with the correct parameters.
2. Validating the configuration across all load balancers.
3. Restarting the load balancers to apply the new settings.
4. Gradually restarting the overloaded servers to ensure stability.
5. Monitoring the system closely to confirm the issue was resolved.

## Corrective and Preventative Measures

**Improvements:**
1. **Configuration Management:**
   - Implement a more rigorous peer review process for configuration changes.
   - Utilize configuration management tools to track and validate changes.

2. **Monitoring Enhancements:**
   - Enhance monitoring to include specific checks for load balancer health and traffic distribution metrics.
   - Set up more granular alerting to detect load balancer misconfigurations earlier.

3. **Incident Response:**
   - Develop and train on improved incident response playbooks, focusing on quicker identification of network-related issues.

**Task List:**
1. **Patch Load Balancer Configuration:**
   - Review and correct the current load balancer configurations across all environments.
   - Schedule regular audits of configuration settings.

2. **Add Monitoring:**
   - Integrate monitoring for load balancer traffic distribution.
   - Set up alerts for unusual traffic patterns or server load.

3. **Improve Documentation:**
   - Update incident response documentation with learnings from this outage.
   - Ensure all teams are trained on the updated response protocols.

4. **Conduct a Post-Incident Review:**
   - Hold a review meeting with all involved teams to discuss what went wrong and how to prevent it in the future.
   - Create a detailed report of the incident for future reference and training purposes.

By implementing these measures, we aim to reduce the likelihood of similar outages and improve our overall response time and effectiveness in dealing with service disruptions.
