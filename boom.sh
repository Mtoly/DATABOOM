echo "while [ 1 ]" > _ins.sh
echo "do" >> _ins.sh
echo "wget -q -t0 -O /dev/null https://cachefly.cachefly.net/100mb.test" >> _ins.sh
echo "done" >> _ins.sh
for i in `seq 1 10`
do
     nohup bash _ins.sh > /dev/null 2>&1 &
     echo "thread $i start!"
done
