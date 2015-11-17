# BEGIN Security

# Don't pass traffic between networks or act as a router
default["sysctl"]["net.ipv4.conf.all.send_redirects"] = 0
default["sysctl"]["net.ipv4.conf.default.send_redirects"] = 0

# Ignore ping broadcasts (smurf attack)
default["sysctl"]["net.ipv4.icmp_echo_ignore_broadcasts"] = 1

# Enable protection for bad icmp error messages
default["sysctl"]["net.ipv4.icmp_ignore_bogus_error_responses"] = 1

# Turn on syncookies for SYN flood attack protection
default["sysctl"]["net.ipv4.tcp_syncookies"] = 1

# Log spoofed, source routed, and redirect packets
default["sysctl"]["net.ipv4.conf.all.log_martians"] = 1
default["sysctl"]["net.ipv4.conf.default.log_martians"] = 1

# Do not accept source routing
default["sysctl"]["net.ipv4.conf.all.accept_source_route"] = 0
default["sysctl"]["net.ipv4.conf.default.accept_source_route"] = 0

# Turn on reverse path filtering
default["sysctl"]["net.ipv4.conf.all.rp_filter"] = 1
default["sysctl"]["net.ipv4.conf.default.rp_filter"] = 1

# Don't allow outsiders to alter the routing tables
default["sysctl"]["net.ipv4.conf.all.accept_redirects"] = 0
default["sysctl"]["net.ipv4.conf.default.accept_redirects"] = 0
default["sysctl"]["net.ipv4.conf.all.secure_redirects"] = 0
default["sysctl"]["net.ipv4.conf.default.secure_redirects"] = 0

# END Security

# Needed for redis
default["sysctl"]["vm.overcommit_memory"] = 1
# END Needed for redis
