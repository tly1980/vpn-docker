img:
	docker build . -t tt_vpn

run:
	docker run --privileged --rm --publish=2222:22 --publish=8888:8888 tt_vpn -o LogLevel=DEBUG
