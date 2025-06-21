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
#$makeindex = 'makeupmendex';
# for the use of upmendex package
# based https://mg.readthedocs.io/latexmk.html
#@cus_dep_list = (@cus_dep_list, "idx ind 0 makeupmendex");
#sub makeupmendex {
#   system("upmendex $_[0].idx -s myindex.ist -o $_[0].ind"); }
#@generated_exts = (@generated_exts, 'ind');
$makeindex = 'upmendex';
