#!/bin/bash

echo "Criando diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários"

useradd Hyago -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd Ashaphe -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd Manoel -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd Raimundo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd Zena -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd Antomia -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd Alzenite -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd Laura -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd Beatriz -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim"

