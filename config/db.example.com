;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     example.com. root.example.com. (
                        05062016        ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      dns.example.com.
@	IN	A	192.168.1.2
dns     IN      A       192.168.1.2
