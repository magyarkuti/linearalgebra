docker run --rm \
    --name busy_gauss \
    --user root \
    --mount type=bind,source=/Users/mgytk/Desktop/linearalgebra,target=/root/target \
    --workdir=/root/target \
    mylatex latexmk -lualatex
