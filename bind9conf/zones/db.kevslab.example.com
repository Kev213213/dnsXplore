$TTL    604800
@       IN      SOA      kevslab.example.com.   admin.kevslab.example.com. (
                              3         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
; name servers
	IN	NS	ns1.kevslab.example.com.
	IN	NS  	ns2.kevslab.example.com.

; ns - A records

; name servers - A records
ns1.kevslab.example.com.          IN      A       192.168.4.10
ns2.kevslab.example.com.          IN      A       192.168.4.9

; A records
host1.kevslab.example.com.        IN      A      192.168.4.11
host2.kevslab.example.com.        IN      A      192.168.4.12
