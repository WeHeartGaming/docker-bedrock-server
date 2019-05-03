TAG=1.11.2.1
VERSION=$(TAG)

build-version:
	docker build --build-arg VERSION=$(tag) -t weheartgaming/bedrock-server:$(TAG) .

push-version: build-version
	docker push weheartgaming/bedrock-server:$(TAG)

build-latest:
	docker build --no-cache --build-arg VERSION=$(TAG) -t weheartgaming/bedrock-server:$(TAG) -t weheartgaming/bedrock-server:latest .

push-latest: build-latest
	docker push weheartgaming/bedrock-server:$(TAG)
	docker push weheartgaming/bedrock-server:latest
