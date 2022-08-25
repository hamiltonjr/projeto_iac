#!/bin/bash

echo 'Criando diretórios...'
mkdir /public /adm /ven /sec
ls

echo '\nCriando os grupos de usuários...'
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
cat /etc/group /GRP_ADM
cat /etc/group /GRP_VEN
cat /etc/group /GRP_SEC

echo 'Criando usuários...'
useradd carlos -m -s /bin/bash -G GRP_ADM
passwd -e carlos
useradd maria -m -s /bin/bash -G GRP_ADM
passwd -e maria
useradd joao -m -s /bin/bash -G GRP_ADM
passwd -e joao

useradd debora -m -s /bin/bash -G GRP_VEN
passwd -e debora
useradd sebastiana -m -s /bin/bash -G GRP_VEN
passwd -e sebastiana
useradd roberto -m -s /bin/bash -G GRP_VEN
passwd -e roberto

useradd josefina -m -s /bin/bash -G GRP_SEC
passwd -e josefina
useradd amanda -m -s /bin/bash -G GRP_SEC
passwd -e amanda
useradd rogerio -m -s /bin/bash -G GRP_SEC
passwd -e rogerio

echo 'Especificando permissões de diretórios...'
chown root:root /public
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /public
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

