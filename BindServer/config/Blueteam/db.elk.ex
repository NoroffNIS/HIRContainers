;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA elk.ex. admin.webserver.ex. (
			      3		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL

            		IN    A		10.10.10.5
@                       IN   NS         localhost.
elastic                 IN    A         10.10.10.7
kibana                  IN    A         10.10.10.5
logstash                IN    A         10.10.10.6
rsyslog			IN    A 	10.10.10.8
