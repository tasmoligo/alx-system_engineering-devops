<center>Server</center>
<p>In computing, a server is a piece of computer hardware or software (computer program) that provides functionality for other programs or devices, called
"clients." This architecture is called the client–server model. Servers can
provide various functionalities, often called "services," such as sharing data
or resources among multiple clients or performing computations for a client. A
single server can serve multiple clients, and a single client can use multiple
servers. A client process may run on the same device or may connect over a
network to a server on a different device.[1] Typical servers are database
servers, file servers, mail servers, print servers, web servers, game servers,
  and application servers.</p>
<h2>SSH</h2>
<p>SSH stands for Secure Shell , and is a secure protocol used as the primary means of connecting to Linux
servers remotely. It provides a text-based interface by spawning a remote shell.
After connecting, all commands you type in your local terminal are sent to the
remote server and executed there.</p>
<h2>How SSH works</h2>
<p>When you connect through SSH, you will be dropped into a shell session, which is a text-based interface where you can interact with your server. For the duration of your SSH session, any commands that you type into your local terminal are sent through an encrypted SSH tunnel and executed on your server.

The SSH connection is implemented using a client-server model. This means that for an SSH connection to be established, the remote machine must be running a piece of software called an SSH daemon. This software listens for connections on a specific network port, authenticates connection requests, and spawns the appropriate environment if the user provides the correct credentials.

The user’s computer must have an SSH client. This is a piece of software that
knows how to communicate using the SSH protocol and can be given information
about the remote host to connect to, the username to use, and the credentials
that should be passed to authenticate. The client can also specify certain
details about the connection type they would like to establish.</p>
<h2>A few commands in working with SSH</h2>
<h3>To generate SSH key-pair</h3>
<p> $ ssh-keygen</p>
<h3>Generate an SSH Key Pair with a Specified Number of Bits</h3>
<p> $ ssh-keygen -b <number of bits> # usually 2048, 2096</p>
<h3>Removing or Changing the Passphrase on a Private Key</h3>
<p> $ ssh-keygen -p</p>
<h3>Displaying the SSH Key Fingerprint</h3>
<p> $ ssh-keygen -l</p>
<h3>Copying your Public SSH Key to a Server with SSH-Copy-ID</h3>
<p> $ ssh-copy-id username@remote_host</p>
<h3>Connecting to a Remote Server</h3>
<p>If username on your local machine is the same as that on the remote
server</p>
<p> $ ssh remote_host</p>
<p>If username is different on the remoter server</p>
<p> $ ssh username@remote_host</p>
<h3>Running a Single Command on a Remote Server</h3>
<p> $ ssh username@remote_host command_to_run</p>
