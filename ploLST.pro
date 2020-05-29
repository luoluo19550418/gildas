!input: astro @ploLST.pro 20A006
! .table 格式见逯登荣老师 class手册

dev i w
cat &1.table
observatory 97:43:44.1 37:23:26.0 3.2
time 
horizon /sour
rule x /major
horizon 30 45 60 75 80 75 60 45 30 /sour
sic delete &1.ps
hard &1.ps /dev ps fas

exit
