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
$dependents_list = 0;
# Enable experimental parallel processing (0 = off, 1 = on)
$use_parallel = 1;

# Limit the maximum number of simultaneous document-processing jobs
# Set to 4 for a quad-core cap, or -1 for unlimited parallelism
$parallel_jobs = 4;

