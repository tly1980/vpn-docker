img:
	docker build . -t tt_vpn

run:
	docker run --privileged --rm --publish=2222:22 --publish=8888:8888 tt_vpn -o LogLevel=DEBUG
	echo "run this command to logon: ssh root@localhost -p 2222 -o StrictHostKeyChecking=no"
