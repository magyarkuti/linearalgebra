docker run --rm \
    --name busy_gauss \
    --user root \
    --mount type=bind,source=`pwd`,target=/root/target \
    --workdir=/root/target \
    mylatex latexmk -lualatex
