sshKeyAdd
=========

Простенький скрипт для добавления своего публичного ключа на сервер.  Использование: # sh sshkeyadd.sh server [username] [keyfile]  server - dns или ip адрес сервера username - имя пользователя, под которым стоит произвести попытку входа на сервер. По умолчанию - пользователь, с чьими правами запущен скрипт. keyfile - путь до публичного ключа. По умолчанию - ~/.ssh/id-rsa.pub