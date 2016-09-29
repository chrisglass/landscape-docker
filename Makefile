USERNAME = tribaal

base-image:
	@docker build -t $(USERNAME)/landscape-base -f landscape-base.Dockerfile .

landsacpe-server:
	@docker build -t $(USERNAME)/landscape-server -f Dockerfile .
