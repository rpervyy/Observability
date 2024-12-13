# Observability
## Подготовка сервера:
Установка всех необходимых компонентов:
   - php
   - nginx
   - mysql (mariadb)
   - wordpress
 
 ## Настройка компонентов
 1. В базе данных (mariadb) был создан пользователь и сама БД
 2. CMS система была подключена к бд (в конфиг файле wp-config.php)
 3. Nginx проксирует CMS систему на 80 порту 
 
 ## Установка exporters
 1. Node-exporter
 2. Blackbox-exporter
 3. Mysql-exporter 

Все экспортеры были установлены из deb пакетов и подключены к prometheus

## Установка prometheus
Prometheus был также установлен из deb пакета.
