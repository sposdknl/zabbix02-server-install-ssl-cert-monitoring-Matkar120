[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/Nv3bt8H1)
[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-2e0aaae1b6195c2367325f4f02e2d04e9abb55f0b24a779b69b11b9e10269abc.svg)](https://classroom.github.com/online_ide?assignment_repo_id=21957115&assignment_repo_type=AssignmentRepo)
# Instalace Zabbix server 
Independent work - Zabbix server installation using Vagrant and automation

Samostatná práce - instalace Zabbix serveru pomocí Vagrant a automatizace

## Zadání: Instalace Zabbix serveru a agenta pomocí Vagrant

Úvod:
V tomto úkolu budete instalovat Zabbix server. Vaším cílem je nainstalovat Zabbix server i agenta.
Vaše samostatná práce bude realizovana pomoci automatizace procesu za pomocí
shell skriptů a různých nástrojů, což bude bodově zvýhodněno.

## 1. Příprava projektu

- Zprovozněte si svůj studentský repozitář na GitHub Classroom - zabbix02. Přidejte do repozitáře všechny soubory, které budete potřebovat (např. Vagrantfile, provisioning skripty, obrázky, dokumentaci, atd.).

### Příprava prostředí

- Vytvořte adresář pro server a do nej Vagrantfile, který, vytvoří virtuální server přidejte je do github repozitáře. Nezapomenou na .gitignore pro soubory a adresáře, které nemají být součástí repo.
- Specifikuje základní parametry (např. RAM 2GB, počet CPU 2, síťové nastavení portforward 22 a 80).
- Linuxovou distribuci zvolte z examples. Jiná distra než Debian a Ubuntu budou bodově zvýhodněna :-)
- Pokud použijete provisioning nástroje (např. Bash, Ansible), přidejte je do repozitáře.

## 2. Instalace Zabbixu 7.0 LTS

- Nainstalujte a nastavte webový server (např. Apache/Nginx)
- Nainstalujte databázi (např. MySQL/MariaDB/PostgreSQL) případně i s TimescaleDB
- Stáhněte a nainstalujte Zabbix server a jeho komponenty
- Nakonfigurujte přístup na webové rozhraní

- Nainstalujte Zabbix agent2.
- Připojte agenta k serveru.

Zaznamenejte všechny kroky instalace do dokumentace formou README.md. Ověřte, že agent2 komunikuje se serverem a data jsou viditelná v Zabbix webovém rozhraní.

## 3. Monitoring
### Monitorujte SSL certifikát školního webu
- Importujte hosta sposdk.cz - sposdk.cz_hosts.yaml
- Zkontrolujte, že se Certifikát https://sposdk.cz monitoruje (Latest data) uložte screen obrazovky do repo

## 4. Dokumentace
### V repozitáři vytvořte soubor README.md, kde popíšete
- Postup Vaší instalace (automatizovanou variantu)
- Způsob spuštění virtuálních strojů pomocí Vagrantu
- Dále pak ověření funkčnosti Zabbixu (procesy, logy atd.)

## 5. Přiložte snímky obrazovky
- Běh Zabbix serveru a agenta (logy, procesy, htop, ps, btop).
- Webové rozhraní Zabbixu. (Každý bude mít svůj Zabbix podepsaný) - proměnná php - $ZBX_SERVER_NAME v zabbix.conf.php
- Snímky obrazovek budou součástí Vašeho repository adresář ./Images

## 6. Důležité soubory

| File config                   | Komponenta      |
|-------------------------------|-----------------|
| Vagrantfile                   | Vagrant         |
| zabbix_server.conf            | Zabbix server   |
| zabbix_agent2.conf            | Zabbix agent    |
| zabbix.conf.php               | Zabbix frontend |
| apache.conf                   | Apache          |
| mysql.ini                     | MySQL/MariaDB         |


## 7. Odevzdání
- Nahrajte svůj projekt do svého GitHub Classroom repozitáře, nezapomenout .gitignore
- Zkontrolujte, že vše funguje podle zadání - http://localhost:8080 nebo http://localhost:8080/zabbix/ (číslo portu je na Vás)
- Odevzdejte link na Váš repozitář do Teams
- Do ./Images vložte screeeny obrazovek (ps, htop, Zabbix Web GUI, monitoring certifikátu školy - Latest Data)
