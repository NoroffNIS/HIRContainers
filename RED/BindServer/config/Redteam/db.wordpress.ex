;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA wordpress.ex. admin.webserver.ex. (
			      3		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL

            		    IN    A		    10.9.10.27
@                       IN   NS         localhost.

