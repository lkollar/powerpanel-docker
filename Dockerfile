FROM debian:unstable

RUN apt update && apt install -y \
  curl \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /tmp
RUN curl -O https://dl4jz3rbrsfum.cloudfront.net/software/ppb440-linux-x86_x64.sh

COPY response.varfile /tmp
RUN sh ppb440-linux-x86_x64.sh -varfile response.varfile -q && rm ppb440-linux-x86_x64.sh

CMD /usr/local/PPB/ppbed run & >/dev/null
