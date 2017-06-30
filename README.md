# playing-with-wsus

- Module WSUS from puppetlabs
- Profile for WSUS Client with some Options
- Site.pp (example of one site.pp with multiple OS)


Pre-requisites:

 - Puppet Agent installed on Windows Client: via Remote or directly in the Windows Installation (PXE, Windows Image, etc).
 - It´s recommended the option of allow-unauthenticated on Puppet Server (in combination with match-request). Then the clients are directly auth on Puppet Server.
