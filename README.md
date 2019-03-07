# Minecraft Bedrock Server

This image will allow you to start a non Java Minecraft server.

## Getting started

If you don't have any config files just start the server and stop it again and all the default files and folders will appear in your data folder.

```sh
docker run -d \
	-v "/yourDataPath:/bedrockConfig" \
	-p 19132:19132/udp \
	weheartgaming/bedrock-server:latest
```

## Tags

- `1.9.0.15`, `latest`
