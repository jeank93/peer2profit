FROM peer2profit/peer2profit_x86_64
RUN apt update \
  && apt install proxychains -y \
  && apt-get clean autoclean \
  && apt-get autoremove --yes \
  && rm -rf /var/lib/{apt,dpkg,cache,log}

CMD ["/bin/sh","-c","proxychains p2pclient -l $P2P_EMAIL"]
