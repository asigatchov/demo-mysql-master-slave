# demo-mysql-master-slave
Docker - master -  slave1 и slave2

Для демонстрации нужно установить docker  по документации

https://docs.docker.com/install/linux/docker-ce/ubuntu/

и docker-compose 
<pre>
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
</pre>

выполнить docker-compose up и дождаться инициализации баз 1-2 минуты зависит от железа

<pre>
master_1  | MySQL init process done. Ready for start up.
master_1  | 
slave2_1  | 
slave2_1  | MySQL init process done. Ready for start up.
slave2_1  | 
slave1_1  | 
slave1_1  | MySQL init process done. Ready for start up.
slave1_1  | 
</pre>


Базы готовы 

входим в контенер с клиентом 

docker-compose run client bash 

скрипт тестирования пишет в master и читает из slave1 и slave2

bash write_master.sh


Консоль клиента

docker-compose run client bash 
mysql -udemo -pdemo demo_database -h master (slave1|slave2)

