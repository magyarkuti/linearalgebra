A cél, hogy olyan lineáris algebra jegyzet szülessen, ami azt és csak azt tartalmazza, amit a Budapesti Corvinus Egyetemen tartott két szemeszteres lineáris algebra kurzusomat lefedi.
Lásd <https://magyarkuti.github.io/algebra-1/> és <https://magyarkuti.github.io/algebra-2/>.

## Az aktuális állapotot: ![Build LaTeX document](https://github.com/magyarkuti/linearalgebra/workflows/Build%20LaTeX%20document/badge.svg)
<https://github.com/magyarkuti/linearalgebra/raw/gh-pages/la.pdf>

### LaTeX beállítások
1. Gitinfo2 globálisan. Lásd: <https://mimischi.github.io/blog/latex-with-git-revisions/>.
2. Fordítás: 
    * latexmk --lualatex
    * Semmi trükk nincs a LaTeX környezetben, standard texlive, vagy Windows-on MikTeX, installáció után a fenti parancs hiba nélkül fordít. 

### LaTeX installáció nélkül, de installált Docker környezet mellett
 1. docker build -t mylatex .
 2. ./compile

![image](/assets/images/2021118.jpg)
