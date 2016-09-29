USERNAME = tribaal

base-image:
	@docker build --build-arg HTTP_PROXY=http://192.168.0.28:8000 -t $(USERNAME)/landscape-base -f landscape-base.Dockerfile .

landsacpe-server:
	@docker build --build-arg HTTP_PROXY=http://192.168.0.28:8000 -t $(USERNAME)/landscape-server -f Dockerfile .
