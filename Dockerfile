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
 amscls \
 amsfonts \
 amsmath \
 atbegshi \
 atveryend \
 auxhook \
 avantgar \
 babel \
 babel-hungarian \
 biber \
 biber.x86_64-linuxmusl \
 biblatex \
 bibtex \
 bibtex.x86_64-linuxmusl \
 bigintcalc \
 bitset \
 bookman \
 booktabs \
 caption \
 charter \
 cm \
 cm-super \
 cmextra \
 collection-basic \
 collection-fontsrecommended \
 colorprofiles \
 courier \
 csquotes \
 dehyph \
 dehyph-exptl \
 dvipdfmx \
 dvipdfmx.x86_64-linuxmusl \
 dvips \
 dvips.x86_64-linuxmusl \
 ec \
 enctex \
 enumitem \
 eso-pic \
 etex \
 etex-pkg \
 etexcmds \
 etoolbox \
 euenc \
 euro \
 euro-ce \
 eurosym \
 fancyvrb \
 fixme \
 float \
 fontspec \
 fpl \
 framed \
 geometry \
 gettitlestring \
 gitinfo2 \
 glyphlist \
 graphics \
 graphics-cfg \
 graphics-def \
 grfext \
 grffile \
 gsftopk \
 gsftopk.x86_64-linuxmusl \
 helvetic \
 hycolor \
 hyperref \
 hyph-utf8 \
 hyphen-base \
 hyphen-hungarian \
 hyphenex \
 ifplatform \
 iftex \
 inconsolata \
 infwarerr \
 intcalc \
 knuth-lib \
 knuth-local \
 kpathsea \
 kpathsea.x86_64-linuxmusl \
 kurier \
 kvdefinekeys \
 kvoptions \
 kvsetkeys \
 l3backend \
 l3kernel \
 l3packages \
 latex \
 latex-bin \
 latex-bin.x86_64-linuxmusl \
 latex-fonts \
 latexconfig \
 latexmk \
 latexmk.x86_64-linuxmusl \
 letltxmacro \
 lm \
 lm-math \
 logreq \
 ltxcmds \
 lua-alt-getopt \
 lualibs \
 luaotfload \
 luaotfload.x86_64-linuxmusl \
 luatex \
 luatex.x86_64-linuxmusl \
 makeindex \
 makeindex.x86_64-linuxmusl \
 manfnt-font \
 marvosym \
 mathpazo \
 mathspec \
 memoir \
 metafont \
 metafont.x86_64-linuxmusl \
 mflogo \
 mflogo-font \
 mfware \
 mfware.x86_64-linuxmusl \
 modes \
 natbib \
 ncntrsbk \
 newpx \
 oberdiek \
 palatino \
 pdfescape \
 pdftex \
 pdftex.x86_64-linuxmusl \
 pdftexcmds \
 plain \
 preview \
 pxfonts \
 refcount \
 rerunfilecheck \
 rsfs \
 scheme-infraonly \
 standalone \
 stringenc \
 symbol \
 systeme \
 tex \
 tex-gyre \
 tex-gyre-math \
 tex-ini-files \
 tex.x86_64-linuxmusl \
 texlive-common \
 texlive-docindex \
 texlive-en \
 texlive-msg-translations \
 texlive-scripts \
 texlive-scripts.x86_64-linuxmusl \
 texlive.infra \
 texlive.infra.x86_64-linuxmusl \
 texliveonfly \
 texliveonfly.x86_64-linuxmusl \
 textcase \
 times \
 tipa \
 tlshell \
 tlshell.x86_64-linuxmusl \
 tools \
 txfonts \
 unicode-data \
 uniquecounter \
 updmap-map \
 upquote \
 url \
 utopia \
 wasy \
 wasy-type1 \
 wasysym \
 xcolor \
 xdvi \
 xdvi.x86_64-linuxmusl \
 xetex \
 xetex.x86_64-linuxmusl \
 xetexconfig \
 xkeyval \
 xstring \
 xunicode \
 zapfchan \
 zapfding 

WORKDIR /home/appuser
# clone the repo magyarkuti/linearalgebra from github
RUN git clone https://github.com/magyarkuti/linearalgebra.git 

# workdir
WORKDIR /home/appuser/linearalgebra

RUN latexmk -lualatex la

# reset workdir
WORKDIR /home/appuser
