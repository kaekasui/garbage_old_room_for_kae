#/bin/sh

if [ $# -ge 3 ]; then
  echo "正しくデータベース名を指定してください。"
  exit 1
fi

dbname=$1
tablename=$2

mysql --user=root << eof

load data infile "/var/www/room/test/csv/${tablename}.csv" into table ${dbname}.${tablename} fields terminated by ',';

eof
