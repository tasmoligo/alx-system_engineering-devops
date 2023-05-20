<!DOCTYPE html>
<html>
<body><h1>0x0F. Load balancer</h1><br><br>
<h2>Load balancer</h2>
<p>A load balancer helps you handle more web traffic and avoid downtime. A load balancer receives traffic from the Internet (or from your internal network, if we’re talking about load balancing an internal service) and then forwards that traffic to your web server.</p><br>
<p>The benefits of using a load balancer are realized once you’ve deployed multiple web servers. The load balancer can then relay traffic to each of them, allowing you to grow your capacity to serve more clients without asking those clients to connect to each server directly. HAProxy receives the traffic and then balances the load across your servers. This technique hedges against any one of your servers failing, since the load balancer can detect if a server becomes unresponsive and automatically stop sending traffic to it. You can use HAProxy to balance the traffic to any number of web applications using a single configuration file.</p><br>
<p>In this task, we are using one load balancer to relay traffic to two web servers</p>
</body>
</html>
