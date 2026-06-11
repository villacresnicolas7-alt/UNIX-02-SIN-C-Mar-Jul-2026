# ============================================================================
#  Dockerfile — "receta" para construir la imagen del curso
# ============================================================================
#  An Dockerfile is a file of text how docker reads for makes an picture
#  every time you open the codespace, your make a container 

#  Each instruction (FROM, ENV, RUN...) makes a layer what docker save
#  thats layers in the cahce 
# ============================================================================


# ----------------------------------------------------------------------------
# FROM: imagen base sobre la que vamos a construir
# ----------------------------------------------------------------------------
# We chance the stage make all since cero and swich for started in the picture oficial of Kali Linux
# in their version always to day and those is stacked over the base
FROM kalilinux/kali-rolling:latest


# ----------------------------------------------------------------------------
# ENV: variables de entorno permanentes dentro del contenedor
# ----------------------------------------------------------------------------
# The variables can  use for each program what the program can read
#
#   DEBIAN_FRONTEND=noninteractive
#     this say "dont make me question and assume answers". without this, some paquets 
#     can be wait for the instruction and stay bug.
#
#   LANG / LC_ALL=es_ES.UTF-8
#     Config the luangues and the codificacion of the main carecters
#
#   TERM=xterm-256color
#     Make the programs can accept the colors, around of the 256 them
#     vim, nvim, htop, etc.
#
#  "\" Means "This contnue in the next line
ENV DEBIAN_FRONTEND=noninteractive \
    LANG=es_ES.UTF-8 \
    LC_ALL=es_ES.UTF-8 \
    TERM=xterm-256color


# ----------------------------------------------------------------------------
# Pre-respuesta a una pregunta interactiva de Wireshark
# ----------------------------------------------------------------------------
# Wireshark/tshark Ask the normis during the install, They may cach the packages.
# Like in the container always are root we answer false for advanced cause the build dont stop waiting the input
RUN echo "wireshark-common wireshark-common/install-setuid boolean false" \
    | debconf-set-selections


# ----------------------------------------------------------------------------
# RUN: ejecutar comandos durante la construcción de la imagen
# ----------------------------------------------------------------------------
# here we install all the sofware 
#
#   apt-get update          -> update
#   apt-get install         -> download and install packages
#     -y                    -> Say Yes 
#     --no-install-recommends -> install the important things
#
# ¿Why one run Biggest and not ten runs smallest?
# Each run makes another layer and makes the pic more fat
#
# The "&&" Just the another command finish good ejecute if sommtime makes wrong 
#The run output and error
RUN apt-get update && apt-get install -y --no-install-recommends \
    \
    #interpreters
    neovim \
    vim \
    zsh \
    bash-completion \
    \
    # tools
    perl \
    make \
    gawk \
    sed \
    grep \
    \
    # === tools basics  ===
    # coreutils trae cat, ls, head, tail, sort, cut, tr, etc.
    # findutils trae find y xargs.
    # procps trae ps, top, kill (gestión de procesos).
    # less = read long archive.
    # tree = mshow directorys.
    # jq = processes jason.
    coreutils \
    findutils \
    procps \
    less \
    tree \
    jq \
    \
    # manual pages
    man-db \
    manpages \
    manpages-posix \
    \
    #  basic red and toos of the downloader 
    curl \
    wget \
    git \
    git-lfs \
    ca-certificates \
    locales \
    \
    # === Linter (automatic error checkers) for bash
    shellcheck \
    \
    # === scaner of red ===
    # nmap = The most famues.
    # masscan = eAn scane masive of ips.
    nmap \
    masscan \
    \
    # === Network packet capture and analysis===
    # tcpdump = capture clasic 
    # tshark = version of wireshark
    tcpdump \
    tshark \
    \
    # === tools of red varied ===
    netcat-traditional \
    socat \
    dnsutils \
    whois \
    traceroute \
    mtr-tiny \
    iproute2 \
    net-tools \
    iputils-ping \
    \
    # === Anonymity: Tor and similar===
    # tor = client Tor.
    # torsocks = "wrapper" that makes any command go through Tor.
    # proxychains4 = join proxies.
    # obfs4proxy = ofusca el tráfico de Tor para evadir bloqueos.
    tor \
    torsocks \
    proxychains4 \
    obfs4proxy \
    \
    # === customer HTTP ===
    httpie \
    \
 # final clean for reduce the size of the image
 # if we delete in another run dont save space
 && sed -i 's/# es_ES.UTF-8/es_ES.UTF-8/' /etc/locale.gen \
 && locale-gen \
 \
 # final clean for reduce the size of the image
 # if we delete in another run dont save space
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*


# ----------------------------------------------------------------------------
# SHELL: interpreter use in the next runs
# ----------------------------------------------------------------------------
# by default docker use a limited shell we change to bash for use modern syntax
SHELL ["/bin/bash", "-c"]


# ----------------------------------------------------------------------------
# WORKDIR: work directory when enter the containerS
# ----------------------------------------------------------------------------
# this is where the terminal open when you start the container
WORKDIR /workspaces

# git config for the container
# safe directory trust any repo mounted
# defaultBranch avoid warnings between master and main
# pull rebase false use merge by default
# lfs install register the hooks global
RUN git config --system --add safe.directory '*' \
 && git config --system init.defaultBranch main \
 && git config --system pull.rebase false \
 && git lfs install --system

# ----------------------------------------------------------------------------
# CMD: comando que se ejecuta por defecto al arrancar el contenedor
# ----------------------------------------------------------------------------
# Lanza una shell bash interactiva. Codespaces la sobrescribe con su
# propia terminal integrada de VS Code, pero es buena práctica dejarla
# definida para que la imagen sea usable también con Docker puro.
# Prompt del curso para bash
RUN chsh -s /usr/bin/zsh root
RUN cat >> /root/.zshrc <<'EOF'
PROMPT='%F{cyan}[Nicolas-pinto]%f %F{yellow}%~%f %(?.%F{green}ok.%F{red}bad %?)%f %#'
EOF

CMD ["/usr/bin/zsh"]