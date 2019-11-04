;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	webserver.ex. admin.webserver.ex. (
			      3		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL

            		IN    A		10.8.10.3
@                       IN   NS         localhost.
goat            	IN    A		10.8.10.3
dwa             	IN    A 	10.8.10.3
