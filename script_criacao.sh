#!/bin/bash

echo "Criando as pastas..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
#ls -l /

echo "atribuindo permissões as pastas"
chmod 777 /publico
chmod 770 /adm /ven /sec
#ls -l /

echo "Criando os grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
#cat /etc/group

echo "Criando usuários e Atribuindo aos grupos"

useradd carlos -m -s /bin/bash -p $(openssl passwd Senha123)
chown carlos:GRP_ADM /adm
useradd maria -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd Senha123)
chown debora:GRP_VEN /ven
useradd sebastiana -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd Senha123)
chown josefina:GRP_SEC /sec
useradd amanda -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_SEC

#cat /etc/passwd

