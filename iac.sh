#!/bin/bash

echo "criando diretórios..."

mkdir /publica
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios..."

useradd carlos - m -s /bin/bash -p $(openssl passwd -crypt lab123) -G GRP_ADM
useradd maria - m -s /bin/bash -p $(openssl passwd -crypt lab123) -G GRP_ADM
useradd joao - m -s /bin/bash -p $(openssl passwd -crypt lab123) -G GRP_ADM

useradd debora - m -s /bin/bash -p $(openssl passwd -crypt lab123) -G GRP_VEN
useradd sebastiana - m -s /bin/bash -p $(openssl passwd -crypt lab123) -G GRP_VEN
useradd roberto - m -s /bin/bash -p $(openssl passwd -crypt lab123) -G GRP_VEN

useradd josefina - m -s /bin/bash -p $(openssl passwd -crypt lab123) -G GRP_ESC
useradd amanda - m -s /bin/bash -p $(openssl passwd -crypt lab123) -G GRP_SEC
useradd rogerio - m -s /bin/bash -p $(openssl passwd -crypt lab123) -G GRP_SEC

echo "Aplicando permissoes de diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /amd
chmod 770 /ven
chmod 770 /sec
chmod 777 /publica

echo "finalizando..."

