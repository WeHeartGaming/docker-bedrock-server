FROM ubuntu:19.04

ENV VERSION=1.9.0.15

RUN apt update && apt install -y unzip curl \
	&& apt-get purge --auto-remove -y gnupg \
	&& rm -rf /var/lib/apt/lists/*

RUN curl "https://minecraft.azureedge.net/bin-linux/bedrock-server-${VERSION}.zip" -o bedrock.zip
RUN unzip bedrock.zip -d bedrock

COPY run.sh run.sh

EXPOSE 19132/udp

RUN mkdir bedrockConfig

WORKDIR /bedrockConfig

VOLUME [ "/bedrockConfig" ]


CMD ["/run.sh"]
