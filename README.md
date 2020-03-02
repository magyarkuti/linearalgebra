# Lineáris Algebra
A cél, hogy olyan lineáris algebra jegyzet szülessen, ami azt és csak azt tartalmazza, amit a Budapesti Corvinus Egyetemen tartott két szemeszteres lineáris algebra kurzusomat lefedi.
Lásd <http://146.110.110.35/mediawiki/index.php/Algebra-I> és <http://146.110.110.35/mediawiki/index.php/Algebra-II>.

## LaTeX beállítások
1. Gitinfo2 globálisan. Lásd: <https://mimischi.github.io/blog/latex-with-git-revisions/>.
2. Fordítás: 
    latexmk --lualatex
    Fontos, hogy semmi trükk nincs a LaTeX környezetben, standard texlive, vagy Windows-on MikTeX, installáció után a fenti parancs hiba nélkül fordít. (Nem commit-álunk szintaktikailag helytelen file-t.)

## LaTeX installáció nélkül, de installált Docker környezet mellett
 1. docker build -t mylatex .
 2. ./compile

## LaTeX és Docker nélkül ![Build LaTeX document](https://github.com/magyarkuti/linearalgebra/workflows/Build%20LaTeX%20document/badge.svg)
Az utolsó commit:
<https://github.com/magyarkuti/linearalgebra/blob/gh-pages/la.pdf>

## Az aktuális pdf file:
<https://github.com/magyarkuti/linearalgebra/raw/gh-pages/la.pdf>
