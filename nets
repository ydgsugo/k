yum -y install git

git clone -b manyuser https://github.com/shadowsocksr/shadowsocksr.git
cd ~/shadowsocksr
bash initcfg.sh
cd ~/shadowsocksr/shadowsocks
python server.py -p 443 -k AD76mnGJWRY098bvc -m aes-256-cfb -O origin -o http_simple -d start

cd /root/ && \
	git clone -b master https://github.com/snooda/net-speeder.git && \
	cd net-speeder/ && \
	sh build.sh && \
	cp -nf net_speeder /usr/bin/ && \
	cd /root/ && \
	rm -rf net-speeder/
  
