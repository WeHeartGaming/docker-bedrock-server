# Minecraft Bedrock Server

This image will allow you to start a non Java Minecraft server.

## Getting started

If you don't have any config files just start the server and stop it again and all the default files and folders will appear in your data folder.

```sh
docker run -itd \
	-v "/yourDataPath:/bedrockConfig" \
	-p 19132:19132/udp \
	weheartgaming/bedrock-server:latest
```

We added the `-it` flags so you can attach to the server and run commands. Exit by using `ctrl-p ctrl-q`

## Tags

- `1.11.0.23`, `latest`
- `1.10.0.7`
- `1.9.0.15`
