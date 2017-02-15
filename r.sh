yum -y install git

git clone -b manyuser https://github.com/breakwa11/shadowsocks.git
cd shadowsocks/shadowsocks
python server.py -p 8388 -k kie8912FDSgjhdQwq9CBg -m aes-256-cfb -O auth_sha1_v2 -o tls1.2_ticket_auth -d start
cd

mkdir kcptun
cd kcptun
wget https://github.com/xtaci/kcptun/releases/download/v20170120/kcptun-linux-amd64-20170120.tar.gz
tar -zxvf *.tar.gz
cd
#nohup /root/kcptun/./server_linux_amd64 -t "127.0.0.1:8388" -l ":4000" -mode fast -crypt aes-256 --key "Adf98fg99da1kfj" -mtu 1400 -sndwnd 1024 -rcvwnd 1024 -datashard 10 -parityshard 3 -dscp 46
nohup /root/kcptun/./server_linux_amd64 -t "127.0.0.1:8388" -l ":4000" -mode fast2 -crypt aes-128 --key "Adf98fg99da1kfj" -mtu 1400 -sndwnd 1024 -rcvwnd 1024
#nohup /root/kcptun/./server_linux_amd64 -t "127.0.0.1:8388" -l ":4000" -mode fast2 -crypt aes-256 --key "Adf98fg99da1kfj" -mtu 1400 -sndwnd 1024 -rcvwnd 1024
#nohup /root/kcptun/./server_linux_amd64 -t "127.0.0.1:8388" -l ":4000" -mode fast2 -crypt aes-256 --key "Adf98fg99da1kfj"  -autoexpire 300 -mtu 1400 -sndwnd 1024 -rcvwnd 1024 -datashard 30 -parityshard 15 -dscp 46 -nocomp true -acknodelay false -nodelay 0 -interval 20 -resend 2 -nc 1 -sockbuf 4194304 -keepalive 10
