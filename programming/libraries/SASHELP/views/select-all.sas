proc sql;
  select
    lowcase(memname)
  from
    dictionary.members
  where
    libname = 'SASHELP' and
    memtype = 'VIEW'
  order by
    memname;
quit;
/*
   vallopt
   vcatalg
   vcformat
   vchkcon
   vcncolu
   vcntabu
   vcolumn
   vdatait
   vdctnry
   vdest
   vengine
   vextfl
   vfilter
   vformat
   vfunc
   vgopt
   vindex
   vinfomp
   vlibnam
   vlocale
   vmacro
   vmember
   voption
   vprmxml
   vprompt
   vrefcon
   vrememb
   vsacces
   vscatlg
   vslib
   vstable
   vstabvw
   vstyle
   vsview
   vtabcon
   vtable
   vtitle
   vview
   vxattr
*/
