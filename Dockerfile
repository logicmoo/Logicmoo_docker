#
# from root@debian10:/opt/logicmoo_workspace
# we run..
#
# docker build -t logicmoo/logicmoo_starter_image:latest --no-cache --add-host=logicmoo.org:10.0.0.90 - < ./Dockerfile.distro
#
FROM php:7.4-apache

USER root
LABEL maintainer = "logicmoo@gmail.com"

ARG DEBIAN_FRONTEND=noninteractive
ARG --security-opt seccomp:unconfined

RUN mkdir -p /usr/share/man/man1 && apt-get update \
 && apt-get install -y --no-install-recommends --allow-unauthenticated \
 \
 init \
 openjdk-11-jdk \
 # openjdk-8-jdk \
 \
 apt-utils \
 zlib1g-dev \
 zlib1g \
 yarn \
 xvnc4viewer \
 xvfb \
 xtrans-dev \
 xterm \
 xorg-sgml-doctools \
 xfonts-base \
 xdotool \
 xauth \
 x11vnc \
 x11proto-xinerama-dev \
 x11proto-xext-dev \
 x11proto-dev \
 x11proto-core-dev \
 x11-utils \
 wget \
 vim \
 uuid-dev \
 unixodbc-dev \
 unixodbc \
 unattended-upgrades \
 tightvncserver \
 texlive-extra-utils \
 tdsodbc \
 supervisor \
 sudo \
 software-properties-common \
 screen \
 rsync \
 rlwrap \
 r-cran-xtable \
 r-cran-xfun \
 r-cran-tinytex \
 r-cran-tikzdevice \
 r-cran-testit \
 r-cran-sourcetools \
 r-cran-shiny \
 r-cran-rserve \
 r-cran-highr \
 r-cran-filehash \
 r-cran-devtools \
 r-cran-bit64 \
 r-cran-base64enc \
 r-base-dev \
 r-base \
 qt5-default \
 python-virtualenv \
 python-pip \
 python3-pip \
 python-dev \
 python3-dev \
 # python-setuptools \
 \
 pwgen \
 psmisc \
 po-debconf \
 pkg-config \
 patch \
 pandoc-data \
 pandoc \
 openssh-server \
 odbcinst1debian2 \
 odbcinst \
 odbc-postgresql \
 nodejs-doc \
 ninja-build \
 netbase \
 net-tools \
 ncurses-term \
 ncurses-dev \
 ncdu \
 nano \
 mesa-utils \
 make \
 m4 \
 lynx \
 lxde \
 lwm \
 lsof \
 linux-libc-dev \
 libyaml-dev \
 libyaml-0-2 \
 libxt6 \
 libxt-dev \
 libxrender-dev \
 libxpm4 \
 libxpm-dev \
 libxml2-dev \
 libxinerama1 \
 libxinerama-dev \
 libxft2 \
 libxft-dev \
 libxext6 \
 libxext-dev \
 libxdmcp-dev \
 libxcb1-dev \
 libxau-dev \
 libx11-dev \
 libx11-6 \
 libuv1-dev \
 libunwind-dev \
 libudunits2-dev \
 libubsan1 \
 libtsan0 \
 libtool \
 libtinfo6 \
 libtiff-dev \
 libtcmalloc-minimal4 \
 libstdc++-8-dev \
 libssl1.1 \
 libssl-dev \
 libssh-dev \
 libsqlite3-0 \
 libsm6 \
 libsm-dev \
 libsigsegv2 \
 libserd-dev \
 libserd-0-0 \
 librhash0 \
 libreoffice \
 libreadline7 \
 libreadline-dev \
 libraptor2-dev \
 libraptor2-0 \
 libpthread-stubs0-dev \
 libpng-dev \
 libpcrecpp0v5 \
 libpcre32-3 \
 libpcre3-dev \
 libpcre3 \
 libpcre16-3 \
 libossp-uuid16 \
 libossp-uuid-dev \
 libopenmpi-dev \
 libodbc1 \
 libnode64 \
 libnode-dev \
 libnet-nslookup-perl \
 libncurses6 \
 libncurses-dev \
 libmpx2 \
 liblzma-dev \
 liblua5.1-0 \
 libltdl7 \
 libltdl-dev \
 liblsan0 \
 libjsoncpp1 \
 libjs-twitter-bootstrap-datepicker \
 libjs-sifter.js \
 libjs-prettify \
 libjs-microplugin.js \
 libjs-json \
 libjs-jquery-ui \
 libjs-jquery-selectize.js \
 libjs-jquery-datatables \
 libjs-jquery \
 libjs-is-typedarray \
 libjs-inherits \
 libjs-highlight.js \
 libjs-es5-shim \
 libjs-d3 \
 libjpeg62-turbo \
 libjpeg62 \
 libjpeg-turbo-progs \
 libjpeg-dev \
 libitm1 \
 libice6 \
 libice-dev \
 libgoogle-perftools-dev \
 libgmpxx4ldbl \
 libgmp10 \
 libgmp-dev \
 libgl1-mesa-dri \
 libgeos-c1v5 \
 libgeos++-dev \
 libgcc-8-dev \
 libfreetype6-dev \
 libfreetype6 \
 libfontconfig1-dev \
 libfontconfig1 \
 libfile-stripnondeterminism-perl \
 libffi-dev \
 libexpat1-dev \
 libedit2 \
 libedit-dev \
 libdpkg-perl \
 libdb5.3-dev \
 libdb5.3 \
 libdb-dev \
 libcc1-0 \
 libcairo-dev \
 libc6-dev \
 libc6 \
 libc-dev-bin \
 libc-ares2 \
 libbsd-dev \
 libbinutils \
 libatk-wrapper-java-jni \
 libatk-wrapper-java \
 libasan5 \
 libarchive13 \
 libarchive-zip-perl \
 libarchive-dev \
 libapache2-mod-wsgi \
 less \
 junit4 \
 junit \
 intltool-debian \
 gyp \
 gtk2-engines-pixbuf \
 gtk2-engines-murrine \
 gnome-themes-standard \
 gitweb \
 gitk \
 git-gui \
 git \
 gettext \
 gdebi-core \
 gdbserver \
 gdb \
 gcc-8 \
 gcc \
 g++-8 \
 g++ \
 file \
 eggdrop \
 dwz \
 dpkg-dev \
 dh-strip-nondeterminism \
 dh-autoreconf \
 debhelper \
 dctrl-tools \
 dbus-x11 \
 curl \
 cmake-data \
 cmake \
 ca-certificates \
 build-essential \
 binutils-x86-64-linux-gnu \
 binutils-common \
 binutils \
 bash-completion \
 bash \
 autotools-dev \
 autopoint \
 automake \
 autoconf \
 arc-theme \
 apache2-utils \
 apache2-suexec-pristine \
 apache2-suexec-custom \
 apache2-ssl-dev \
 apache2-doc \
 apache2-dev \
 apache2-data \
 apache2-bin \
 apache2 \
 analog \
 # odd deps we missed for SWI-Prolog (world build version) \
 cron elpa-ediprolog emacs emacs-bin-common emacs-common emacs-el emacs-gtk \
 emacsen-common exim4-base exim4-config exim4-daemon-light ghostscript \
 gsfonts guile-2.2-libs imagemagick-6-common install-info libde265-0 \
 libfftw3-double3 libgc1c2 libgnutls-dane0 libgsasl7 libheif1 \
 libkyotocabinet16v5 liblqr-1-0 libm17n-0 libmagickcore-6.q16-6 \
 libmagickwand-6.q16-6 libmailutils5 libmariadb3 libntlm0 libotf0 libunbound8 \
 libwebpmux3 libx265-165 m17n-db mailutils mailutils-common mariadb-common \
 mysql-common


# Install packages
RUN apt-get update -qq && apt-get install -y \
    locales -qq \
    && locale-gen en_AU \
    && locale-gen en_AU.UTF-8 \
    && dpkg-reconfigure locales \
    && locale-gen C.UTF-8 \
    && dpkg-reconfigure locales \
    && apt-get update && apt-get install -y \
      gnupg \
      software-properties-common \
      build-essential \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4F4EA0AAE5267A6C \
    && apt-get update && apt-get install -y  \
      supervisor \
      wget \
      curl \
      zip \
      unzip \
      apache2


# install our Butterfly websockets (telnet server over httpd)
RUN apt-get update \
 && apt-get install -y -q --no-install-recommends \
    build-essential \
    libffi-dev \
    libssl-dev \
    python-dev \
    python-pip \
    python-setuptools \
    ca-certificates \
 # && pip install --upgrade pip ; # python -m \
 && pip uninstall setuptools ; pip install setuptools \
 && pip install --upgrade setuptools wheel \
 && pip install tornado asyncio \
 && pip install butterfly \
 && pip install butterfly[themes] # If you want to use themes \
 && pip install butterfly[systemd] # If you want to use systemd \
 && RUN cd /etc/systemd/system \
 && curl -O https://raw.githubusercontent.com/paradoxxxzero/butterfly/master/butterfly.service \
 && curl -O https://raw.githubusercontent.com/paradoxxxzero/butterfly/master/butterfly.socket \
 && echo Maybe remember to: systemctl enable butterfly.socket \
 && echo Maybe remember to: systemctl start butterfly.socket
ADD . /opt/logicmoo_docker

# who/where
ENV LANG C.UTF-8
ENV LANGUAGE C.UTF-8
ENV LC_ALL C.UTF-8
ENV LOGICMOO_USER prologmud_server
ENV LOGICMOO_WS /opt/logicmoo_workspace
ENV LOGICMOO_GAMES $LOGICMOO_WS/packs_sys/prologmud_samples/prolog/prologmud_sample_games

# check out our repo
RUN git config --global http.sslVerify false \
 && git clone https://github.com/logicmoo/logicmoo_workspace $LOGICMOO_WS \
 && cd $LOGICMOO_WS \
 && git config --local http.sslVerify false \
 && git submodule update --init \
 && git pull --recurse-submodules

# make our process running user
RUN adduser --disabled-password --gecos "" --no-create-home $LOGICMOO_USER --home $LOGICMOO_GAMES \
 && chown -R $LOGICMOO_USER $LOGICMOO_GAMES

# apache config
RUN cp -a $LOGICMOO_WS/packs_web/logicmoo_webui/etc/* /etc \
 && cp -a $LOGICMOO_WS/packs_web/logicmoo_webui/var/* /var \
 # shell config \
 && cp -a $LOGICMOO_WS/etc/* /etc

# Install Composer
RUN wget -O /tmp/composer.phar https://getcomposer.org/composer.phar \
    && cp /tmp/composer.phar /usr/local/bin/composer \
    && chmod +x /usr/local/bin/composer

# https://github.com/studionone/docker-apache-php (Apache config)
# COPY apache2.conf /etc/apache2/apache2.conf
# COPY site-config.conf /etc/apache2/sites-available/000-default.conf
# Supervisor config
COPY supervisor_conf.d/apache2.conf /etc/supervisor/conf.d/apache2.conf
# Install and update entrypoint script
COPY start.sh /opt/logicmoo_docker/start.sh
COPY rootfs/startup.sh /opt/logicmoo_docker/startup.sh

# enable some apache mods
RUN a2enmod access_compat alias auth_basic authn_core authn_file authz_core authz_host authz_user autoindex deflate dir env \
 filter headers http2 mime mpm_prefork negotiation php7.3 php7.4 proxy proxy_ajp proxy_balancer proxy_connect proxy_express \
 proxy_fcgi proxy_fdpass proxy_ftp proxy_hcheck proxy_html proxy_http proxy_http2 proxy_scgi proxy_uwsgi proxy_wstunnel reqtimeout \
 rewrite setenvif slotmem_shm socache_shmcb ssl status xml2enc ; /bin/true \
 \
# confirm our webconfig works (or it exits docker build) \
 \
 && service apache2 start && service apache2 status


# install swi-prolog
RUN cd $LOGICMOO_WS && ./INSTALL-SWI.md

# set up our runtime stuff (give root better shell stuff and our likely history commands)
RUN cp -f $LOGICMOO_GAMES/.??*rc ~root/ \
 && cp -f $LOGICMOO_GAMES/.bash* ~root/ \
 && cp -f $LOGICMOO_GAMES/.profile* ~root/ \
 && touch $LOGICMOO_GAMES/history_3804 \
 && touch $LOGICMOO_GAMES/completion_3804 \
 && chown $LOGICMOO_USER $LOGICMOO_GAMES/completion_* \
 && chown $LOGICMOO_USER $LOGICMOO_GAMES/history_* \
 && touch $LOGICMOO_GAMES/nohup.out \
 && chown $LOGICMOO_USER $LOGICMOO_GAMES/nohup.out \
 && chown -R $LOGICMOO_USER $LOGICMOO_WS/packs_sys/eggdrop/ \
 && chown -R $LOGICMOO_USER $LOGICMOO_WS/packs_sys/logicmoo_nlu/ext/pldata/ \
# in case of symlinking \
 \
 && chown -R $LOGICMOO_USER $LOGICMOO_WS/packs_sys/logicmoo_nlu/ext/pldata/plkb0988/ \
 && chown -R $LOGICMOO_USER $LOGICMOO_WS/packs_sys/logicmoo_nlu/ext/pldata/plkb0988/src~/ \
 && chown -R $LOGICMOO_USER $LOGICMOO_WS/packs_web/butterfly

# expose our used ports
EXPOSE 22
EXPOSE 80
EXPOSE 443
EXPOSE 3020
EXPOSE 3050
EXPOSE 3080

WORKDIR $LOGICMOO_WS
EXPOSE 57575
CMD ["butterfly", "--unsecure", "--host=0.0.0.0"]
# ENTRYPOINT ["/opt/logicmoo_docker/run.sh"]
ENTRYPOINT ["/opt/logicmoo_docker/start.sh"]

