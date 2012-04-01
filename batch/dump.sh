#/bin/sh

if [ $# -ge 3 ]; then
  echo "正しくデータベース名とテーブル名を指定してください。"
  exit 1
fi

dbname=$1
tablename=$2

mysql --user=root << eof

select * from ${dbname}.${tablename} into outfile "/tmp/${tablename}.csv" fields terminated by ',';

eof
