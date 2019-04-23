TAG=1.11.0.23
VERSION=$(TAG)

build-version:
	docker build -t weheartgaming/bedrock-server:$(TAG) .

push-version: build
	docker push weheartgaming/bedrock-server:$(TAG)

build-latest:
	docker build --no-cache -t weheartgaming/bedrock-server:$(TAG) -t weheartgaming/bedrock-server:latest .

push-latest: build-latest
	docker push weheartgaming/bedrock-server:$(TAG)
	docker push weheartgaming/bedrock-server:latest
