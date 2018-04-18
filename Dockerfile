FROM scratch
ADD archlinux.tar /
RUN update-ca-certs
RUN locale-gen
RUN pacman-key --init && pacman-key --populate archlinux
RUN /usr/share/libalpm/scripts/systemd-hook sysusers
ENV LANG=en_US.UTF-8
CMD ["/usr/bin/bash"]
