

## Description

This is a simple web infrastructure that hosts a website that is reachable via `www.foobar.com`. There are no firewalls or SSL certificates for protecting the server's network. Each component (database, application server) has to share the resources (CPU, RAM, and SSD) provided by the server.

## Specifics About This Infrastructure

+ What a server is.<br/>A server is a computer system that provides services or resources to other computers or users, known as clients, over a network. In this case, our server hosts the website www.foobar.com and serves requests from users.

+ The role of the domain name.<br/>The domain name (foobar.com) acts as a human-readable label for our website, allowing users to easily access it without needing to remember its IP address.

+ The type of DNS record `www` is in `www.foobar.com`.<br/>The "www" in www.foobar.com is a subdomain, and the DNS record associated with it is typically a CNAME (Canonical Name) record that points to the main domain (foobar.com) or directly to the server IP address (8.8.8.8 in this case).</i>

+ The role of the web server.<br/>The web server (e.g., Nginx) receives incoming HTTP requests from users' browsers and serves static content (HTML, CSS, JavaScript files) or routes dynamic requests to the application server. It handles tasks such as SSL termination, load balancing, and caching, improving the performance and security of the website.

+ The role of the application server.<br/>The application server hosts the application codebase, which contains the business logic and dynamic content of the website. It processes requests from the web server, executes application logic, interacts with the database, and generates dynamic responses (e.g., rendering HTML templates, handling user authentication).

+ The role of the database.<br/>stores and manages the website's data, including user accounts, content, and configurations. It allows the application server to store and retrieve data dynamically, supporting features such as user profiles, posts, comments, 

+ What the server uses to communicate with the client (computer of the user requesting the website).<br/>The server is using the HTTP (Hypertext Transfer Protocol), which enables the transfer of resource and data, such as HTML documents between the server and the client.

## Issues With This Infrastructure

+ SPOF<br/>Since all components are hosted on a single server, any hardware failure or software issue can lead to the entire website becoming inaccessible.


+ Downtime when maintenance needed<br/>Performing maintenance tasks such as deploying new code or updating server configurations may require restarting the web server or application server, resulting in downtime for users accessing the website.


+ Cannot scale if too much incoming traffic<br/>With only one server, the infrastructure cannot easily handle a sudden increase in incoming traffic. Scaling horizontally by adding more servers is not possible in this setup, limiting the website's ability to accommodate growth.
