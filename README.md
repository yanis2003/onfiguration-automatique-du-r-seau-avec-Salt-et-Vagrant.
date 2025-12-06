# 🌐 Configuration LAN Automatisée (IPv4 / IPv6 · Vagrant · SaltStack)

Ce projet met en place un **réseau local (LAN)** entièrement automatisé en **double pile IPv4 / IPv6**.  
L’infrastructure est déployée avec **Vagrant** et configurée automatiquement via **SaltStack**.

L’objectif est de montrer comment créer un réseau professionnel reproductible, comme dans les environnements utilisés en entreprise (Cloud, DevOps, Cybersécurité).

---

## 🚀 Fonctionnalités principales

- Déploiement automatique de plusieurs machines virtuelles (VM1, VM2, VM3...)
- Configuration **IPv4 + IPv6** (double stack)
- Gestion complète via **Infrastructure as Code (IaC)**
- Application automatique des configurations réseau :
  - interfaces
  - adresses IP
  - routes
  - désactivation de NetworkManager
- Test complet de connectivité (ping, ping6, ip neigh, ip route)

---

## 🧭 Architecture du réseau


Toutes les machines appartiennent au même LAN (LAN1).

---

## 🔢 Plan d'adressage

### 🟦 IPv4

| Machine | Adresse IPv4 | Masque | Gateway |
|--------|--------------|--------|---------|
| VM1 | 172.16.2.131 | /28 | 172.16.2.129 |
| VM2 | 172.16.2.132 | /28 | 172.16.2.129 |
| VM3 | 172.16.2.133 | /28 | 172.16.2.129 |

### 🟩 IPv6

| Machine | Adresse IPv6 |
|---------|----------------|
| VM1 | fc00:1234:3::1/64 |
| VM2 | fc00:1234:3::2/64 |
| VM3 | fc00:1234:3::3/64 |

Chaque machine possède aussi une adresse **link-local** automatique (`fe80::/64`).

---

## ⚙️ Déploiement automatique

### 🟣 1. Vagrant

Le fichier `Vagrantfile` déploie automatiquement toutes les machines virtuelles ainsi que leurs interfaces réseau.

Commande :

```bash
vagrant up
