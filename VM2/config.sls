# Configuration eth1
# RAPPEL: eth0 est Ã  vagrant, ne pas y toucher

## DÃ©sactivation de network-manager
NetworkManager:
  service:
    - dead
    - enable: False
    
## Suppression de la passerelle par dÃ©faut
ip route del default:
  cmd:
    - run

##Configuration de VM2
eth1:
  network.managed:
    - enabled: True
    - type: eth
    - proto: static
    - ipaddr: 172.16.2.132
    - netmask: 28

##Configuration de VM1
eth2:
  network.managed:
    - enabled: True
    - type: eth
    - proto: static
    - ipaddr: 172.16.2.162
    - netmask: 28


# enable ipv4 forwarding
net.ipv4.ip_forward:
  sysctl:
    - present
    - value: 1







