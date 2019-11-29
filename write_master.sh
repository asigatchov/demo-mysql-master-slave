
mysql -udemo -pdemo -h master  demo_database -e 'insert into users (`email`, `login`) values ("demo@ya.ru", "demo");'
sleep 2
mysql -udemo -pdemo -h slave1  demo_database -e 'select * from users'
mysql -udemo -pdemo -h slave2  demo_database -e 'select * from users'
