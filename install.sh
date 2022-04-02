#!/usr/bin/env expect
spawn -noecho /root/openvpn-install.sh
expect "should OpenVPN use?" { send -- "1\r" }
expect "OpenVPN listen to?" { send -- "1194\r" }
expect "the clients:" { send -- "2\r" }
expect "the first client:" { send -- "openvpn\r" }
expect "key to continue..." { send -- "a\r" }
interact
