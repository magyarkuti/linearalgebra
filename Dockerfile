FROM alpine
# based on wadeos/alpine-tinytex

# tinytex dependencies
RUN apk add \
  perl  \
  wget \
  xz \
  tar \
  fontconfig \
  freetype \
  lua \
  gcc \
  python \
  git

# add user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# install as appuser
USER appuser

# setup workdir
WORKDIR /home/appuser

# setup path
ENV PATH=/home/appuser/.TinyTeX/bin/x86_64-linuxmusl/:$PATH

# download and install tinytex
RUN wget -qO- "https://yihui.name/gh/tinytex/tools/install-unx.sh" | sh

# add tlmgr to path
RUN /home/appuser/.TinyTeX/bin/*/tlmgr path add

# verify latex version
RUN lualatex --version

# verify tlmgr version
RUN tlmgr --version

# install texlive packages
RUN tlmgr install \
    preview \
    standalone \
    memoire \
    textcase \
    biber \
    makeindex \
    hyphen-hungarian \
    babel-hungarian \
    collection-fontsrecommended \
    texliveonfly 

# clone the linearalgebra repo
RUN git clone https://github.com/magyarkuti/linearalgebra.git 

# workdir
WORKDIR /home/appuser/linearalgebra

RUN texliveonfly -c lualatex la.tex
RUN latexmk -c la
RUN latexmk -lualatex la

# reset workdir
WORKDIR /home/appuser
