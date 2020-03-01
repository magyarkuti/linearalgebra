
![Build LaTeX document](https://github.com/magyarkuti/linearalgebra/workflows/Build%20LaTeX%20document/badge.svg)


# Lineáris Algebra
A cél, hogy olyan lineáris algebra jegyzet szülessen, ami azt és csak azt tartalmazza, amit a Budapesti Corvinus Egyetemen tartott két szemeszteres lineáris algebra kurzusomat lefedi.
Lásd <http://146.110.110.35/mediawiki/index.php/Algebra-I> és <http://146.110.110.35/mediawiki/index.php/Algebra-II>.

## Az első rész kulcs problémái
1. Rendelkezésre álló idő: 12x90 perc előadás és 12x90 perc gyakorlat.
Hasznos lenne, ha sikerülne 12 kb azonos nehézségű fejezetbe tömöríteni.
2. Bázis transzformáció vagy Gauss-Jordan elimináció.
Hajlamos lennék a puszta bázistrafós tárgyalásra.
De:
    1. Előnyök.
                1. Ha csak bázistrafó van, akkor azt gondolják a hallgatók, hogy a mindenütt máshol taglalt eliminációs eljáras nem tudják.
                2. Fontos a két módszer ekvivalenciája.
    2. Hátrányok
                1. Fölösleges, hiszen a bázistrafóból is származtatható a lineáris egyenleterendszerekre vonatkozó összes állítás.
3. Kicserélési tétel vagy Steinitz lemma (matroid)
4. Rang-tétel
5. Mátrix inverz felcserélhetősége
6. Kvadratikus alakok mátrix algebrai tárgyalása

## LaTeX beállítások
1. Gitinfo2 globálisan. Lásd: <https://mimischi.github.io/blog/latex-with-git-revisions/>.
2. Fordítás: 
    latexmk --lualatex

Fontos, hogy semmi trükk nincs a LaTeX környetben, standard texlive, vagy Windows-on MikTeX, installáció után a fenti parancs hiba nélkül fordít.
(Nem commit-álunk szintaktikailag helytelen file-t.)

## LaTeX installáció nélkül, de installált Docker környezet mellett

docker build -t mylatex .

./compile
