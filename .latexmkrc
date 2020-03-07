# This shows how to use lualatex (http://en.wikipedia.org/wiki/LuaTeX)
# with latexmk.  
#
#   WARNING: The method shown here is suitable only for ver. 4.51 and
#            later of latexmk, not for earlier versions.
#

#$pdf_mode = 4;
#$postscript_mode = $dvi_mode = 0;
@default_files=('la.tex');
$clean_ext = "bbl";

%GI2TM_OPTIONS=(RELEASE_MATCHER=>"v[0-9]*.*");
do './gitinfo2.pm';
