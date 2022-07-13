FROM --platform=linux/amd64 ubuntu:20.04

ENV VERSION=1.19.10.03

RUN apt update && apt install -y unzip curl \
	&& rm -rf /var/lib/apt/lists/*

RUN curl "https://minecraft.azureedge.net/bin-linux/bedrock-server-${VERSION}.zip" -o bedrock.zip
RUN unzip bedrock.zip -d /bedrock

COPY run.sh run.sh

EXPOSE 19132/udp

RUN mkdir bedrockConfig

WORKDIR /bedrockConfig

VOLUME [ "/bedrockConfig" ]


CMD ["/run.sh"]
