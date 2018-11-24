FROM debian:stretch

RUN apt-get update && apt-get install -y curl unzip
RUN mkdir /data
RUN curl -o /data/d3917d9b-aacb-51e6-8a74-10769cea076c.zip -u worsttmsever@gmail.com:RcUjCb9kJ236 https://peps.cnes.fr/resto/collections/S2ST/d3917d9b-aacb-51e6-8a74-10769cea076c/download
RUN cd /data/ && unzip d3917d9b-aacb-51e6-8a74-10769cea076c.zip -d d3917d9b-aacb-51e6-8a74-10769cea076c

CMD /bin/cp -r /data/* /tmp 

