;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA mhn.ex. admin.webserver.ex. (
			      3		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL

            		    IN    A		    10.9.10.2
            		    IN    A         10.8.10.50
@                       IN   NS         localhost.
hp01                    IN    A         10.9.10.10
hp02                    IN    A         10.9.10.11
hp03                    IN    A         10.8.10.51
