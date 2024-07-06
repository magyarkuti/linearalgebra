# This shows how to use lualatex (http://en.wikipedia.org/wiki/LuaTeX)
# with latexmk.  
#
#   WARNING: The method shown here is suitable only for ver. 4.51 and
#            later of latexmk, not for earlier versions.
#
$pdf_mode = 4;
$show_time =1;
# $postscript_mode = $dvi_mode = 0;
@default_files=('la.tex');
$clean_ext = "bbl";
# for the use of nomencl package
# https://mg.readthedocs.io/latexmk.html
@cus_dep_list = (@cus_dep_list, "glo gls 0 makenomenclature");
sub makenomenclature {
   system("makeindex $_[0].glo -s nomencl.ist -o $_[0].gls"); }
@generated_exts = (@generated_exts, 'glo');
