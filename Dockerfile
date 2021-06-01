FROM docker.io/library/archlinux:base-devel

RUN pacman -Syu --noconfirm base-devel namcap

RUN useradd -m builder

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
