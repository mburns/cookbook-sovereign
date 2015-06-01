#
# Cookbook Name:: paramount
# Attributes:: sysctl
#
# Copyright 2015, Michael Burns
# License:: Apache License, Version 2.0
#

# default['sysctl']['params']['net']['ipv4']['conf']['default']['rp_filter'] = 1

# default['sysctl']['params']['net']['ipv4']['icmp_echo_ignore_broadcasts'] = 1
# default['sysctl']['params']['net']['ipv4']['tcp_syncookies'] = 1
# default['sysctl']['params']['net']['ipv4']['tcp_synack_retries'] = 2
# default['sysctl']['params']['net']['ipv4']['tcp_rfc1337'] = 1

# default['sysctl']['params']['kernel']['sysrq'] = 0
# default['sysctl']['params']['kernel']['core_uses_pid'] = 1
# default['sysctl']['params']['kernel']['exec-shield'] = 1
# default['sysctl']['params']['kernel']['randomize_va_space'] = 1
# default['sysctl']['params']['kernel']['pid_max'] = 65536

# # Ignore ICMP broadcast requests
# net.ipv4.icmp_echo_ignore_broadcasts = 1
#
# # Disable source packet routing
# net.ipv4.conf.all.accept_source_route = 0
# net.ipv6.conf.all.accept_source_route = 0
# net.ipv4.conf.default.accept_source_route = 0
# net.ipv6.conf.default.accept_source_route = 0
#
# # Ignore send redirects
# net.ipv4.conf.all.send_redirects = 0
# net.ipv4.conf.default.send_redirects = 0
#
# # Block SYN attacks
# net.ipv4.tcp_max_syn_backlog = 2048
# net.ipv4.tcp_synack_retries = 2
# net.ipv4.tcp_syn_retries = 5
#
# # Log Martians
# net.ipv4.conf.all.log_martians = 1
# net.ipv4.icmp_ignore_bogus_error_responses = 1
#
# # Ignore ICMP redirects
# net.ipv4.conf.all.accept_redirects = 0
# net.ipv6.conf.all.accept_redirects = 0
# net.ipv4.conf.default.accept_redirects = 0
# net.ipv6.conf.default.accept_redirects = 0
#
# # Ignore Directed pings
# net.ipv4.icmp_echo_ignore_all = 1
