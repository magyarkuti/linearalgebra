# This shows how to use lualatex (http://en.wikipedia.org/wiki/LuaTeX)
# with latexmk.  
#
#   WARNING: The method shown here is suitable only for ver. 4.51 and
#            later of latexmk, not for earlier versions.
#
$pdf_mode = 4;
$show_time =1;
@default_files=('la.tex');
$clean_ext = "bbl";
$makeindex = "upmendex -s myindex.ist %O -o %D %S";
$silence_logfile_warnings = 0;
$dependents_list = 0
