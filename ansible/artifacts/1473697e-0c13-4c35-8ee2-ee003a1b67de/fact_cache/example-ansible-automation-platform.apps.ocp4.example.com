{
    "_ansible_facts_gathered": true,
    "ansible_all_ipv4_addresses": [
        "192.168.50.254",
        "172.25.250.253"
    ],
    "ansible_all_ipv6_addresses": [
        "fe80::5054:ff:fe01:32fe",
        "fe80::5054:ff:fe00:fafd"
    ],
    "ansible_apparmor": {
        "status": "disabled"
    },
    "ansible_architecture": "x86_64",
    "ansible_bios_date": "04/01/2014",
    "ansible_bios_vendor": "SeaBIOS",
    "ansible_bios_version": "1.14.0-1.module+el8.4.0+8855+a9e237a9",
    "ansible_board_asset_tag": "NA",
    "ansible_board_name": "NA",
    "ansible_board_serial": "NA",
    "ansible_board_vendor": "NA",
    "ansible_board_version": "NA",
    "ansible_chassis_asset_tag": "NA",
    "ansible_chassis_serial": "NA",
    "ansible_chassis_vendor": "Red Hat",
    "ansible_chassis_version": "RHEL 7.6.0 PC (i440FX + PIIX, 1996)",
    "ansible_cmdline": {
        "BOOT_IMAGE": "(hd0,gpt3)/vmlinuz-5.14.0-284.25.1.el9_2.x86_64",
        "console": "ttyS0,115200n8",
        "crashkernel": "1G-4G:192M,4G-64G:256M,64G-:512M",
        "net.ifnames": "0",
        "no_timer_check": true,
        "root": "UUID=d370e124-ea83-46ea-a7ef-67f12dd8bb3c"
    },
    "ansible_date_time": {
        "date": "2024-07-11",
        "day": "11",
        "epoch": "1720701648",
        "epoch_int": "1720701648",
        "hour": "08",
        "iso8601": "2024-07-11T12:40:48Z",
        "iso8601_basic": "20240711T084048151747",
        "iso8601_basic_short": "20240711T084048",
        "iso8601_micro": "2024-07-11T12:40:48.151747Z",
        "minute": "40",
        "month": "07",
        "second": "48",
        "time": "08:40:48",
        "tz": "EDT",
        "tz_dst": "EDT",
        "tz_offset": "-0400",
        "weekday": "Thursday",
        "weekday_number": "4",
        "weeknumber": "28",
        "year": "2024"
    },
    "ansible_default_ipv4": {
        "address": "172.25.250.253",
        "alias": "eth0",
        "broadcast": "172.25.250.255",
        "gateway": "172.25.250.254",
        "interface": "eth0",
        "macaddress": "52:54:00:00:fa:fd",
        "mtu": 1500,
        "netmask": "255.255.255.0",
        "network": "172.25.250.0",
        "prefix": "24",
        "type": "ether"
    },
    "ansible_default_ipv6": {},
    "ansible_device_links": {
        "ids": {
            "sr0": [
                "ata-QEMU_DVD-ROM_QM00001"
            ],
            "vda": [
                "virtio-c2174cee-64b4-4cde-9"
            ],
            "vda1": [
                "virtio-c2174cee-64b4-4cde-9-part1"
            ],
            "vda2": [
                "virtio-c2174cee-64b4-4cde-9-part2"
            ],
            "vda3": [
                "virtio-c2174cee-64b4-4cde-9-part3"
            ],
            "vda4": [
                "virtio-c2174cee-64b4-4cde-9-part4"
            ],
            "vdb": [
                "virtio-7066ce36-ba07-440d-9"
            ],
            "vdb1": [
                "virtio-7066ce36-ba07-440d-9-part1"
            ]
        },
        "labels": {
            "sr0": [
                "config-2"
            ],
            "vda3": [
                "boot"
            ],
            "vda4": [
                "root"
            ]
        },
        "masters": {},
        "uuids": {
            "sr0": [
                "2024-07-11-12-06-56-00"
            ],
            "vda2": [
                "7B77-95E7"
            ],
            "vda3": [
                "e78d6a6f-15cc-469b-83ab-9a60b7b574f0"
            ],
            "vda4": [
                "d370e124-ea83-46ea-a7ef-67f12dd8bb3c"
            ],
            "vdb1": [
                "9aff9fba-df77-4414-9624-ae90ddbaa887"
            ]
        }
    },
    "ansible_devices": {
        "sr0": {
            "holders": [],
            "host": "IDE interface: Intel Corporation 82371SB PIIX3 IDE [Natoma/Triton II]",
            "links": {
                "ids": [
                    "ata-QEMU_DVD-ROM_QM00001"
                ],
                "labels": [
                    "config-2"
                ],
                "masters": [],
                "uuids": [
                    "2024-07-11-12-06-56-00"
                ]
            },
            "model": "QEMU DVD-ROM",
            "partitions": {},
            "removable": "1",
            "rotational": "1",
            "sas_address": null,
            "sas_device_handle": null,
            "scheduler_mode": "mq-deadline",
            "sectors": "1116",
            "sectorsize": "2048",
            "size": "558.00 KB",
            "support_discard": "0",
            "vendor": "QEMU",
            "virtual": 1
        },
        "vda": {
            "holders": [],
            "host": "SCSI storage controller: Red Hat, Inc. Virtio block device",
            "links": {
                "ids": [
                    "virtio-c2174cee-64b4-4cde-9"
                ],
                "labels": [],
                "masters": [],
                "uuids": []
            },
            "model": null,
            "partitions": {
                "vda1": {
                    "holders": [],
                    "links": {
                        "ids": [
                            "virtio-c2174cee-64b4-4cde-9-part1"
                        ],
                        "labels": [],
                        "masters": [],
                        "uuids": []
                    },
                    "sectors": "2048",
                    "sectorsize": 512,
                    "size": "1.00 MB",
                    "start": "2048",
                    "uuid": null
                },
                "vda2": {
                    "holders": [],
                    "links": {
                        "ids": [
                            "virtio-c2174cee-64b4-4cde-9-part2"
                        ],
                        "labels": [],
                        "masters": [],
                        "uuids": [
                            "7B77-95E7"
                        ]
                    },
                    "sectors": "409600",
                    "sectorsize": 512,
                    "size": "200.00 MB",
                    "start": "4096",
                    "uuid": "7B77-95E7"
                },
                "vda3": {
                    "holders": [],
                    "links": {
                        "ids": [
                            "virtio-c2174cee-64b4-4cde-9-part3"
                        ],
                        "labels": [
                            "boot"
                        ],
                        "masters": [],
                        "uuids": [
                            "e78d6a6f-15cc-469b-83ab-9a60b7b574f0"
                        ]
                    },
                    "sectors": "1024000",
                    "sectorsize": 512,
                    "size": "500.00 MB",
                    "start": "413696",
                    "uuid": "e78d6a6f-15cc-469b-83ab-9a60b7b574f0"
                },
                "vda4": {
                    "holders": [],
                    "links": {
                        "ids": [
                            "virtio-c2174cee-64b4-4cde-9-part4"
                        ],
                        "labels": [
                            "root"
                        ],
                        "masters": [],
                        "uuids": [
                            "d370e124-ea83-46ea-a7ef-67f12dd8bb3c"
                        ]
                    },
                    "sectors": "19533791",
                    "sectorsize": 512,
                    "size": "9.31 GB",
                    "start": "1437696",
                    "uuid": "d370e124-ea83-46ea-a7ef-67f12dd8bb3c"
                }
            },
            "removable": "0",
            "rotational": "1",
            "sas_address": null,
            "sas_device_handle": null,
            "scheduler_mode": "mq-deadline",
            "sectors": "20971520",
            "sectorsize": "512",
            "size": "10.00 GB",
            "support_discard": "0",
            "vendor": "0x1af4",
            "virtual": 1
        },
        "vdb": {
            "holders": [],
            "host": "SCSI storage controller: Red Hat, Inc. Virtio block device",
            "links": {
                "ids": [
                    "virtio-7066ce36-ba07-440d-9"
                ],
                "labels": [],
                "masters": [],
                "uuids": []
            },
            "model": null,
            "partitions": {
                "vdb1": {
                    "holders": [],
                    "links": {
                        "ids": [
                            "virtio-7066ce36-ba07-440d-9-part1"
                        ],
                        "labels": [],
                        "masters": [],
                        "uuids": [
                            "9aff9fba-df77-4414-9624-ae90ddbaa887"
                        ]
                    },
                    "sectors": "83884032",
                    "sectorsize": 512,
                    "size": "40.00 GB",
                    "start": "2048",
                    "uuid": "9aff9fba-df77-4414-9624-ae90ddbaa887"
                }
            },
            "removable": "0",
            "rotational": "1",
            "sas_address": null,
            "sas_device_handle": null,
            "scheduler_mode": "mq-deadline",
            "sectors": "83886080",
            "sectorsize": "512",
            "size": "40.00 GB",
            "support_discard": "0",
            "vendor": "0x1af4",
            "virtual": 1
        }
    },
    "ansible_distribution": "RedHat",
    "ansible_distribution_file_parsed": true,
    "ansible_distribution_file_path": "/etc/redhat-release",
    "ansible_distribution_file_search_string": "Red Hat",
    "ansible_distribution_file_variety": "RedHat",
    "ansible_distribution_major_version": "9",
    "ansible_distribution_release": "Plow",
    "ansible_distribution_version": "9.2",
    "ansible_dns": {
        "nameservers": [
            "172.25.250.254"
        ],
        "search": [
            "lab.example.com",
            "example.com",
            "ocp4.example.com"
        ]
    },
    "ansible_domain": "lab.example.com",
    "ansible_effective_group_id": 0,
    "ansible_effective_user_id": 0,
    "ansible_env": {
        "BASH_FUNC_which%%": "() {  ( alias;\n eval ${which_declare} ) | /usr/bin/which --tty-only --read-alias --read-functions --show-tilde --show-dot $@\n}",
        "DBUS_SESSION_BUS_ADDRESS": "unix:path=/run/user/0/bus",
        "HOME": "/root",
        "LANG": "C.UTF-8",
        "LESSOPEN": "||/usr/bin/lesspipe.sh %s",
        "LOGNAME": "root",
        "LS_COLORS": "rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=01;37;41:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=01;36:*.au=01;36:*.flac=01;36:*.m4a=01;36:*.mid=01;36:*.midi=01;36:*.mka=01;36:*.mp3=01;36:*.mpc=01;36:*.ogg=01;36:*.ra=01;36:*.wav=01;36:*.oga=01;36:*.opus=01;36:*.spx=01;36:*.xspf=01;36:",
        "MOTD_SHOWN": "pam",
        "PATH": "/root/.local/bin:/root/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin",
        "PWD": "/root",
        "SELINUX_LEVEL_REQUESTED": "",
        "SELINUX_ROLE_REQUESTED": "",
        "SELINUX_USE_CURRENT_RANGE": "",
        "SHELL": "/bin/bash",
        "SHLVL": "1",
        "SSH_CLIENT": "172.25.250.9 59066 22",
        "SSH_CONNECTION": "172.25.250.9 59066 192.168.50.254 22",
        "SSH_TTY": "/dev/pts/0",
        "TERM": "xterm-256color",
        "USER": "root",
        "XDG_RUNTIME_DIR": "/run/user/0",
        "XDG_SESSION_CLASS": "user",
        "XDG_SESSION_ID": "1",
        "XDG_SESSION_TYPE": "tty",
        "_": "/usr/bin/python3",
        "which_declare": "declare -f"
    },
    "ansible_eth0": {
        "active": true,
        "device": "eth0",
        "features": {
            "esp_hw_offload": "off [fixed]",
            "esp_tx_csum_hw_offload": "off [fixed]",
            "fcoe_mtu": "off [fixed]",
            "generic_receive_offload": "on",
            "generic_segmentation_offload": "on",
            "highdma": "on [fixed]",
            "hsr_dup_offload": "off [fixed]",
            "hsr_fwd_offload": "off [fixed]",
            "hsr_tag_ins_offload": "off [fixed]",
            "hsr_tag_rm_offload": "off [fixed]",
            "hw_tc_offload": "off [fixed]",
            "l2_fwd_offload": "off [fixed]",
            "large_receive_offload": "off [fixed]",
            "loopback": "off [fixed]",
            "macsec_hw_offload": "off [fixed]",
            "netns_local": "off [fixed]",
            "ntuple_filters": "off [fixed]",
            "receive_hashing": "off [fixed]",
            "rx_all": "off [fixed]",
            "rx_checksumming": "on [fixed]",
            "rx_fcs": "off [fixed]",
            "rx_gro_hw": "on",
            "rx_gro_list": "off",
            "rx_udp_gro_forwarding": "off",
            "rx_udp_tunnel_port_offload": "off [fixed]",
            "rx_vlan_filter": "on [fixed]",
            "rx_vlan_offload": "off [fixed]",
            "rx_vlan_stag_filter": "off [fixed]",
            "rx_vlan_stag_hw_parse": "off [fixed]",
            "scatter_gather": "on",
            "tcp_segmentation_offload": "on",
            "tls_hw_record": "off [fixed]",
            "tls_hw_rx_offload": "off [fixed]",
            "tls_hw_tx_offload": "off [fixed]",
            "tx_checksum_fcoe_crc": "off [fixed]",
            "tx_checksum_ip_generic": "on",
            "tx_checksum_ipv4": "off [fixed]",
            "tx_checksum_ipv6": "off [fixed]",
            "tx_checksum_sctp": "off [fixed]",
            "tx_checksumming": "on",
            "tx_esp_segmentation": "off [fixed]",
            "tx_fcoe_segmentation": "off [fixed]",
            "tx_gre_csum_segmentation": "off [fixed]",
            "tx_gre_segmentation": "off [fixed]",
            "tx_gso_list": "off [fixed]",
            "tx_gso_partial": "off [fixed]",
            "tx_gso_robust": "on [fixed]",
            "tx_ipxip4_segmentation": "off [fixed]",
            "tx_ipxip6_segmentation": "off [fixed]",
            "tx_lockless": "off [fixed]",
            "tx_nocache_copy": "off",
            "tx_scatter_gather": "on",
            "tx_scatter_gather_fraglist": "off [fixed]",
            "tx_sctp_segmentation": "off [fixed]",
            "tx_tcp6_segmentation": "on",
            "tx_tcp_ecn_segmentation": "on",
            "tx_tcp_mangleid_segmentation": "off",
            "tx_tcp_segmentation": "on",
            "tx_tunnel_remcsum_segmentation": "off [fixed]",
            "tx_udp_segmentation": "off [fixed]",
            "tx_udp_tnl_csum_segmentation": "off [fixed]",
            "tx_udp_tnl_segmentation": "off [fixed]",
            "tx_vlan_offload": "off [fixed]",
            "tx_vlan_stag_hw_insert": "off [fixed]",
            "vlan_challenged": "off [fixed]"
        },
        "hw_timestamp_filters": [],
        "ipv4": {
            "address": "172.25.250.253",
            "broadcast": "172.25.250.255",
            "netmask": "255.255.255.0",
            "network": "172.25.250.0",
            "prefix": "24"
        },
        "ipv6": [
            {
                "address": "fe80::5054:ff:fe00:fafd",
                "prefix": "64",
                "scope": "link"
            }
        ],
        "macaddress": "52:54:00:00:fa:fd",
        "module": "virtio_net",
        "mtu": 1500,
        "pciid": "virtio0",
        "promisc": false,
        "speed": -1,
        "timestamping": [],
        "type": "ether"
    },
    "ansible_eth1": {
        "active": true,
        "device": "eth1",
        "features": {
            "esp_hw_offload": "off [fixed]",
            "esp_tx_csum_hw_offload": "off [fixed]",
            "fcoe_mtu": "off [fixed]",
            "generic_receive_offload": "on",
            "generic_segmentation_offload": "on",
            "highdma": "on [fixed]",
            "hsr_dup_offload": "off [fixed]",
            "hsr_fwd_offload": "off [fixed]",
            "hsr_tag_ins_offload": "off [fixed]",
            "hsr_tag_rm_offload": "off [fixed]",
            "hw_tc_offload": "off [fixed]",
            "l2_fwd_offload": "off [fixed]",
            "large_receive_offload": "off [fixed]",
            "loopback": "off [fixed]",
            "macsec_hw_offload": "off [fixed]",
            "netns_local": "off [fixed]",
            "ntuple_filters": "off [fixed]",
            "receive_hashing": "off [fixed]",
            "rx_all": "off [fixed]",
            "rx_checksumming": "on [fixed]",
            "rx_fcs": "off [fixed]",
            "rx_gro_hw": "on",
            "rx_gro_list": "off",
            "rx_udp_gro_forwarding": "off",
            "rx_udp_tunnel_port_offload": "off [fixed]",
            "rx_vlan_filter": "on [fixed]",
            "rx_vlan_offload": "off [fixed]",
            "rx_vlan_stag_filter": "off [fixed]",
            "rx_vlan_stag_hw_parse": "off [fixed]",
            "scatter_gather": "on",
            "tcp_segmentation_offload": "on",
            "tls_hw_record": "off [fixed]",
            "tls_hw_rx_offload": "off [fixed]",
            "tls_hw_tx_offload": "off [fixed]",
            "tx_checksum_fcoe_crc": "off [fixed]",
            "tx_checksum_ip_generic": "on",
            "tx_checksum_ipv4": "off [fixed]",
            "tx_checksum_ipv6": "off [fixed]",
            "tx_checksum_sctp": "off [fixed]",
            "tx_checksumming": "on",
            "tx_esp_segmentation": "off [fixed]",
            "tx_fcoe_segmentation": "off [fixed]",
            "tx_gre_csum_segmentation": "off [fixed]",
            "tx_gre_segmentation": "off [fixed]",
            "tx_gso_list": "off [fixed]",
            "tx_gso_partial": "off [fixed]",
            "tx_gso_robust": "on [fixed]",
            "tx_ipxip4_segmentation": "off [fixed]",
            "tx_ipxip6_segmentation": "off [fixed]",
            "tx_lockless": "off [fixed]",
            "tx_nocache_copy": "off",
            "tx_scatter_gather": "on",
            "tx_scatter_gather_fraglist": "off [fixed]",
            "tx_sctp_segmentation": "off [fixed]",
            "tx_tcp6_segmentation": "on",
            "tx_tcp_ecn_segmentation": "on",
            "tx_tcp_mangleid_segmentation": "off",
            "tx_tcp_segmentation": "on",
            "tx_tunnel_remcsum_segmentation": "off [fixed]",
            "tx_udp_segmentation": "off [fixed]",
            "tx_udp_tnl_csum_segmentation": "off [fixed]",
            "tx_udp_tnl_segmentation": "off [fixed]",
            "tx_vlan_offload": "off [fixed]",
            "tx_vlan_stag_hw_insert": "off [fixed]",
            "vlan_challenged": "off [fixed]"
        },
        "hw_timestamp_filters": [],
        "ipv4": {
            "address": "192.168.50.254",
            "broadcast": "192.168.50.255",
            "netmask": "255.255.255.0",
            "network": "192.168.50.0",
            "prefix": "24"
        },
        "ipv6": [
            {
                "address": "fe80::5054:ff:fe01:32fe",
                "prefix": "64",
                "scope": "link"
            }
        ],
        "macaddress": "52:54:00:01:32:fe",
        "module": "virtio_net",
        "mtu": 1500,
        "pciid": "virtio1",
        "promisc": false,
        "speed": -1,
        "timestamping": [],
        "type": "ether"
    },
    "ansible_fibre_channel_wwn": [],
    "ansible_fips": false,
    "ansible_form_factor": "Other",
    "ansible_fqdn": "utility.lab.example.com",
    "ansible_hostname": "utility",
    "ansible_hostnqn": "nqn.2014-08.org.nvmexpress:uuid:028f7d95-6a39-485a-a286-976bf7a71aaa",
    "ansible_interfaces": [
        "eth1",
        "lo",
        "eth0"
    ],
    "ansible_is_chroot": false,
    "ansible_iscsi_iqn": "",
    "ansible_kernel": "5.14.0-284.25.1.el9_2.x86_64",
    "ansible_kernel_version": "#1 SMP PREEMPT_DYNAMIC Thu Jul 20 09:11:28 EDT 2023",
    "ansible_lo": {
        "active": true,
        "device": "lo",
        "features": {
            "esp_hw_offload": "off [fixed]",
            "esp_tx_csum_hw_offload": "off [fixed]",
            "fcoe_mtu": "off [fixed]",
            "generic_receive_offload": "on",
            "generic_segmentation_offload": "on",
            "highdma": "on [fixed]",
            "hsr_dup_offload": "off [fixed]",
            "hsr_fwd_offload": "off [fixed]",
            "hsr_tag_ins_offload": "off [fixed]",
            "hsr_tag_rm_offload": "off [fixed]",
            "hw_tc_offload": "off [fixed]",
            "l2_fwd_offload": "off [fixed]",
            "large_receive_offload": "off [fixed]",
            "loopback": "on [fixed]",
            "macsec_hw_offload": "off [fixed]",
            "netns_local": "on [fixed]",
            "ntuple_filters": "off [fixed]",
            "receive_hashing": "off [fixed]",
            "rx_all": "off [fixed]",
            "rx_checksumming": "on [fixed]",
            "rx_fcs": "off [fixed]",
            "rx_gro_hw": "off [fixed]",
            "rx_gro_list": "off",
            "rx_udp_gro_forwarding": "off",
            "rx_udp_tunnel_port_offload": "off [fixed]",
            "rx_vlan_filter": "off [fixed]",
            "rx_vlan_offload": "off [fixed]",
            "rx_vlan_stag_filter": "off [fixed]",
            "rx_vlan_stag_hw_parse": "off [fixed]",
            "scatter_gather": "on",
            "tcp_segmentation_offload": "on",
            "tls_hw_record": "off [fixed]",
            "tls_hw_rx_offload": "off [fixed]",
            "tls_hw_tx_offload": "off [fixed]",
            "tx_checksum_fcoe_crc": "off [fixed]",
            "tx_checksum_ip_generic": "on [fixed]",
            "tx_checksum_ipv4": "off [fixed]",
            "tx_checksum_ipv6": "off [fixed]",
            "tx_checksum_sctp": "on [fixed]",
            "tx_checksumming": "on",
            "tx_esp_segmentation": "off [fixed]",
            "tx_fcoe_segmentation": "off [fixed]",
            "tx_gre_csum_segmentation": "off [fixed]",
            "tx_gre_segmentation": "off [fixed]",
            "tx_gso_list": "on",
            "tx_gso_partial": "off [fixed]",
            "tx_gso_robust": "off [fixed]",
            "tx_ipxip4_segmentation": "off [fixed]",
            "tx_ipxip6_segmentation": "off [fixed]",
            "tx_lockless": "on [fixed]",
            "tx_nocache_copy": "off [fixed]",
            "tx_scatter_gather": "on [fixed]",
            "tx_scatter_gather_fraglist": "on [fixed]",
            "tx_sctp_segmentation": "on",
            "tx_tcp6_segmentation": "on",
            "tx_tcp_ecn_segmentation": "on",
            "tx_tcp_mangleid_segmentation": "on",
            "tx_tcp_segmentation": "on",
            "tx_tunnel_remcsum_segmentation": "off [fixed]",
            "tx_udp_segmentation": "on",
            "tx_udp_tnl_csum_segmentation": "off [fixed]",
            "tx_udp_tnl_segmentation": "off [fixed]",
            "tx_vlan_offload": "off [fixed]",
            "tx_vlan_stag_hw_insert": "off [fixed]",
            "vlan_challenged": "on [fixed]"
        },
        "hw_timestamp_filters": [],
        "ipv4": {
            "address": "127.0.0.1",
            "broadcast": "",
            "netmask": "255.0.0.0",
            "network": "127.0.0.0",
            "prefix": "8"
        },
        "ipv6": [
            {
                "address": "::1",
                "prefix": "128",
                "scope": "host"
            }
        ],
        "mtu": 65536,
        "promisc": false,
        "timestamping": [],
        "type": "loopback"
    },
    "ansible_loadavg": {
        "15m": 0.19,
        "1m": 0.07,
        "5m": 0.25
    },
    "ansible_local": {},
    "ansible_lsb": {},
    "ansible_lvm": {
        "lvs": {},
        "pvs": {},
        "vgs": {}
    },
    "ansible_machine": "x86_64",
    "ansible_machine_id": "2669558ac83d45ee9f5c8fcd5f8ccac5",
    "ansible_memfree_mb": 1041,
    "ansible_memory_mb": {
        "nocache": {
            "free": 1382,
            "used": 395
        },
        "real": {
            "free": 1041,
            "total": 1777,
            "used": 736
        },
        "swap": {
            "cached": 0,
            "free": 0,
            "total": 0,
            "used": 0
        }
    },
    "ansible_memtotal_mb": 1777,
    "ansible_mounts": [
        {
            "block_available": 314738,
            "block_size": 4096,
            "block_total": 2439163,
            "block_used": 2124425,
            "device": "/dev/vda4",
            "fstype": "xfs",
            "inode_available": 2518055,
            "inode_total": 2602768,
            "inode_used": 84713,
            "mount": "/",
            "options": "rw,seclabel,relatime,attr2,inode64,logbufs=8,logbsize=32k,noquota",
            "size_available": 1289166848,
            "size_total": 9990811648,
            "uuid": "d370e124-ea83-46ea-a7ef-67f12dd8bb3c"
        },
        {
            "block_available": 42133,
            "block_size": 4096,
            "block_total": 126632,
            "block_used": 84499,
            "device": "/dev/vda3",
            "fstype": "xfs",
            "inode_available": 255686,
            "inode_total": 256000,
            "inode_used": 314,
            "mount": "/boot",
            "options": "rw,seclabel,relatime,attr2,inode64,logbufs=8,logbsize=32k,noquota",
            "size_available": 172576768,
            "size_total": 518684672,
            "uuid": "e78d6a6f-15cc-469b-83ab-9a60b7b574f0"
        },
        {
            "block_available": 49363,
            "block_size": 4096,
            "block_total": 51145,
            "block_used": 1782,
            "device": "/dev/vda2",
            "fstype": "vfat",
            "inode_available": 0,
            "inode_total": 0,
            "inode_used": 0,
            "mount": "/boot/efi",
            "options": "rw,relatime,fmask=0077,dmask=0077,codepage=437,iocharset=ascii,shortname=winnt,errors=remount-ro",
            "size_available": 202190848,
            "size_total": 209489920,
            "uuid": "7B77-95E7"
        },
        {
            "block_available": 10242754,
            "block_size": 4096,
            "block_total": 10480385,
            "block_used": 237631,
            "device": "/dev/vdb1",
            "fstype": "xfs",
            "inode_available": 20968530,
            "inode_total": 20971008,
            "inode_used": 2478,
            "mount": "/exports-ocp4",
            "options": "rw,seclabel,relatime,attr2,inode64,logbufs=8,logbsize=32k,noquota",
            "size_available": 41954320384,
            "size_total": 42927656960,
            "uuid": "9aff9fba-df77-4414-9624-ae90ddbaa887"
        }
    ],
    "ansible_nodename": "utility",
    "ansible_os_family": "RedHat",
    "ansible_pkg_mgr": "dnf",
    "ansible_proc_cmdline": {
        "BOOT_IMAGE": "(hd0,gpt3)/vmlinuz-5.14.0-284.25.1.el9_2.x86_64",
        "console": [
            "tty0",
            "ttyS0,115200n8"
        ],
        "crashkernel": "1G-4G:192M,4G-64G:256M,64G-:512M",
        "net.ifnames": "0",
        "no_timer_check": true,
        "root": "UUID=d370e124-ea83-46ea-a7ef-67f12dd8bb3c"
    },
    "ansible_processor": [
        "0",
        "GenuineIntel",
        "Intel(R) Xeon(R) Gold 6248 CPU @ 2.50GHz",
        "1",
        "GenuineIntel",
        "Intel(R) Xeon(R) Gold 6248 CPU @ 2.50GHz"
    ],
    "ansible_processor_cores": 1,
    "ansible_processor_count": 2,
    "ansible_processor_nproc": 2,
    "ansible_processor_threads_per_core": 1,
    "ansible_processor_vcpus": 2,
    "ansible_product_name": "OpenStack Compute",
    "ansible_product_serial": "253e4ff3-11a7-488b-a134-5803f76d835a",
    "ansible_product_uuid": "253e4ff3-11a7-488b-a134-5803f76d835a",
    "ansible_product_version": "20.6.2-2.20221005185231.6786e96.el8ost",
    "ansible_python": {
        "executable": "/usr/bin/python3",
        "has_sslcontext": true,
        "type": "cpython",
        "version": {
            "major": 3,
            "micro": 16,
            "minor": 9,
            "releaselevel": "final",
            "serial": 0
        },
        "version_info": [
            3,
            9,
            16,
            "final",
            0
        ]
    },
    "ansible_python_version": "3.9.16",
    "ansible_real_group_id": 0,
    "ansible_real_user_id": 0,
    "ansible_selinux": {
        "config_mode": "enforcing",
        "mode": "enforcing",
        "policyvers": 33,
        "status": "enabled",
        "type": "targeted"
    },
    "ansible_selinux_python_present": true,
    "ansible_service_mgr": "systemd",
    "ansible_ssh_host_key_ecdsa_public": "AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBDcL2VQf0n9bkNbia58KgR8rUZZFoTg3W3gf0V94pNthhsuUOeXVUciniEUjQePien4AdYkeojJQpcr+5NWjaGI=",
    "ansible_ssh_host_key_ecdsa_public_keytype": "ecdsa-sha2-nistp256",
    "ansible_ssh_host_key_ed25519_public": "AAAAC3NzaC1lZDI1NTE5AAAAIH8OE6w+4Ex6fUw172X/J13x0BHWv9zUurvti3j+LclU",
    "ansible_ssh_host_key_ed25519_public_keytype": "ssh-ed25519",
    "ansible_ssh_host_key_rsa_public": "AAAAB3NzaC1yc2EAAAADAQABAAABgQDMblv/6ArixkKUuqj+pCMQ1nohK75HNnjBEUeqJeoPm5SMJBzwWWS5jkCQGU6vEkBevdrJn4QAwlrVDzace5OIuSY3r2nTTKNRfy9v3HavmIAdrBuHr+7r/7Cz2n5JhzNf6jlsbybnZ+cHn0MUSiNcZPXjSaCMmr8rzbdDFhxpYBdxPIViholi/mjw6ipDv+MWwZ5RPZ6t0q7PcODTdsMtvtl4gFcexVWPQ69TSXWZByllMTQo2XEgcV2oQYYVsajXk303j/kQUW0ubyUeKWaJ8SDacmEdhWCBbD5JnamDz+qyj6VSZKkn//OYlIMwWqB2o7gaOZkf2bT9ijsT1LM177qPgU9cChU+dotd0UYWnsf/vmoo6L0OCbMP4Ik5HVZ23TP3hh09GmBczBtNK9fnIfUD4krbV/eR/eYTrpAp/use25gu9fLTcGzi+2RqZlUuLksAaJ20WyuIS/rgXBsWZmTKZpQySNUilc9bhFFUOfPhhd841FSp7oBi3FwKmz0=",
    "ansible_ssh_host_key_rsa_public_keytype": "ssh-rsa",
    "ansible_swapfree_mb": 0,
    "ansible_swaptotal_mb": 0,
    "ansible_system": "Linux",
    "ansible_system_capabilities": [],
    "ansible_system_capabilities_enforced": "False",
    "ansible_system_vendor": "Red Hat",
    "ansible_uptime_seconds": 1968,
    "ansible_user_dir": "/root",
    "ansible_user_gecos": "root",
    "ansible_user_gid": 0,
    "ansible_user_id": "root",
    "ansible_user_shell": "/bin/bash",
    "ansible_user_uid": 0,
    "ansible_userspace_architecture": "x86_64",
    "ansible_userspace_bits": "64",
    "ansible_virtualization_role": "guest",
    "ansible_virtualization_tech_guest": [
        "openstack"
    ],
    "ansible_virtualization_tech_host": [
        "kvm"
    ],
    "ansible_virtualization_type": "openstack",
    "discovered_interpreter_python": "/usr/bin/python3",
    "gather_subset": [
        "all"
    ],
    "module_setup": true
}