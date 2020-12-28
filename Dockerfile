FROM debian

# Update
RUN apt-get update && apt-get install -y bind9 && mkdir /etc/bind/import

EXPOSE 53

COPY named.conf /etc/bind/named.conf

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
