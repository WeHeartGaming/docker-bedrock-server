FROM ubuntu:19.04

ENV VERSION=1.12.0.28

RUN apt update && apt install -y unzip curl \
	&& rm -rf /var/lib/apt/lists/*

RUN curl "https://minecraft.azureedge.net/bin-linux/bedrock-server-${VERSION}.zip" -o bedrock.zip
RUN unzip bedrock.zip -d bedrock

COPY run.sh run.sh

EXPOSE 19132/udp

RUN mkdir bedrockConfig

WORKDIR /bedrockConfig

VOLUME [ "/bedrockConfig" ]


CMD ["/run.sh"]
