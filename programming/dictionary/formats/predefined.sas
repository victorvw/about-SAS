proc sql flow=30;
  select
    coalesce(i.fmtname, f.fmtname) as format_name,
    i.source   as i_source ,
    f.source   as f_source,
    i.fmttype  as i_fmttype ,
    f.fmttype  as f_fmttype
  from
    dictionary.formats i full outer join
    dictionary.formats f on
      i.fmtname = f.fmtname    and
      i.fmttype = 'I'          and
      f.fmttype = 'F'
    where
      coalesce(i.source, '?') in ('B', 'U') and
      coalesce(f.source, '?') in ('B', 'U')
    order by
      calculated format_name;
quit;
/*
                                Format  Format  Format  Format
format_name                     Source  Source  Type    Type
--------------------------------------------------------------
$                               B       B       I       F
$ASCII                          U       U       I       F
$BASE64X                        U       U       I       F
$BINARY                         B       B       I       F
$BYVAL                          U       U       I       F
$CHAR                           B       B       I       F
$CPTDW                          U       U       I       F
$CPTWD                          U       U       I       F
$CSTR                           U       U       I       F
$EBCDIC                         U       U       I       F
$F                              B       B       I       F
$GEOREF                         B       B       I       F
$HEX                            B       B       I       F
$KANA                           U       U       I       F
$KANJI                          U       U       I       F
$KANJIX                         U       U       I       F
$KTRUNC                         U       U       I       F
$LOGVS                          U       U       I       F
$LOGVSR                         U       U       I       F
$N8601B                         U       U       I       F
$N8601E                         U       U       I       F
$OCTAL                          B       B       I       F
$QUOTE                          B       B       I       F
$REVERJ                         U       U       I       F
$REVERS                         U       U       I       F
$ROMAJI                         U       U       I       F
$UCS2B                          U       U       I       F
$UCS2BE                         U       U       I       F
$UCS2L                          U       U       I       F
$UCS2LE                         U       U       I       F
$UCS2X                          U       U       I       F
$UCS2XE                         U       U       I       F
$UCS4B                          U       U       I       F
$UCS4BE                         U       U       I       F
$UCS4L                          U       U       I       F
$UCS4LE                         U       U       I       F
$UCS4X                          U       U       I       F
$UCS4XE                         U       U       I       F
$UESC                           U       U       I       F
$UESCE                          U       U       I       F
$UNCR                           U       U       I       F
$UNCRE                          U       U       I       F
$UPAREN                         U       U       I       F
$UPARENE                        U       U       I       F
$UPCASE                         U       U       I       F
$UTF8X                          U       U       I       F
$UTF8XE                         U       U       I       F
$VARYING                        B       B       I       F
$VSLOG                          U       U       I       F
$VSLOGR                         U       U       I       F
AFRDFDE                         U       U       I       F
AFRDFDT                         U       U       I       F
AFRDFMY                         U       U       I       F
B8601DA                         U       U       I       F
B8601DN                         U       U       I       F
B8601DT                         U       U       I       F
B8601DX                         U       U       I       F
B8601DZ                         U       U       I       F
B8601LX                         U       U       I       F
B8601LZ                         U       U       I       F
B8601TM                         U       U       I       F
B8601TX                         U       U       I       F
B8601TZ                         U       U       I       F
BEST                            B       B       I       F
BESTX                           B       B       I       F
BINARY                          B       B       I       F
CATDFDE                         U       U       I       F
CATDFDT                         U       U       I       F
CATDFMY                         U       U       I       F
COMMA                           B       B       I       F
COMMAX                          B       B       I       F
CRODFDE                         U       U       I       F
CRODFDT                         U       U       I       F
CRODFMY                         U       U       I       F
CSYDFDE                         U       U       I       F
CSYDFDT                         U       U       I       F
CSYDFMY                         U       U       I       F
D                               B       B       I       F
DANDFDE                         U       U       I       F
DANDFDT                         U       U       I       F
DANDFMY                         U       U       I       F
DATE                            B       B       I       F
DATETIME                        B       B       I       F
DDMMYY                          B       B       I       F
DESDFDE                         U       U       I       F
DESDFDT                         U       U       I       F
DESDFMY                         U       U       I       F
DEUDFDE                         U       U       I       F
DEUDFDT                         U       U       I       F
DEUDFMY                         U       U       I       F
DOLLAR                          B       B       I       F
DOLLARX                         B       B       I       F
E                               B       B       I       F
E8601DA                         U       U       I       F
E8601DN                         U       U       I       F
E8601DT                         U       U       I       F
E8601DX                         U       U       I       F
E8601DZ                         U       U       I       F
E8601LX                         U       U       I       F
E8601LZ                         U       U       I       F
E8601TM                         U       U       I       F
E8601TX                         U       U       I       F
E8601TZ                         U       U       I       F
ENGDFDE                         U       U       I       F
ENGDFDT                         U       U       I       F
ENGDFMY                         U       U       I       F
ESPDFDE                         U       U       I       F
ESPDFDT                         U       U       I       F
ESPDFMY                         U       U       I       F
EURDFDE                         U       U       I       F
EURDFDT                         U       U       I       F
EURDFMY                         U       U       I       F
EURO                            U       U       I       F
EUROX                           U       U       I       F
F                               B       B       I       F
FINDFDE                         U       U       I       F
FINDFDT                         U       U       I       F
FINDFMY                         U       U       I       F
FLOAT                           U       U       I       F
FRADFDE                         U       U       I       F
FRADFDT                         U       U       I       F
FRADFMY                         U       U       I       F
FRSDFDE                         U       U       I       F
FRSDFDT                         U       U       I       F
FRSDFMY                         U       U       I       F
HEX                             B       B       I       F
HUNDFDE                         U       U       I       F
HUNDFDT                         U       U       I       F
HUNDFMY                         U       U       I       F
IB                              B       B       I       F
IBR                             B       B       I       F
IEEE                            B       B       I       F
IEEER                           B       B       I       F
IS8601DA                        U       U       I       F
IS8601DN                        U       U       I       F
IS8601DT                        U       U       I       F
IS8601DZ                        U       U       I       F
IS8601LZ                        U       U       I       F
IS8601TM                        U       U       I       F
IS8601TZ                        U       U       I       F
ITADFDE                         U       U       I       F
ITADFDT                         U       U       I       F
ITADFMY                         U       U       I       F
JDATEYMD                        U       U       I       F
JNENGO                          U       U       I       F
JULIAN                          B       B       I       F
MACDFDE                         U       U       I       F
MACDFDT                         U       U       I       F
MACDFMY                         U       U       I       F
MDYAMPM                         B       B       I       F
MINGUO                          U       U       I       F
MMDDYY                          B       B       I       F
MONYY                           B       B       I       F
MRB                             U       U       I       F
NEGPAREN                        B       B       I       F
NENGO                           B       B       I       F
NLDATE                          U       U       I       F
NLDATEW                         U       B       I       F
NLDATM                          U       U       I       F
NLDATMAP                        U       U       I       F
NLDATMW                         U       B       I       F
NLDDFDE                         U       U       I       F
NLDDFDT                         U       U       I       F
NLDDFMY                         U       U       I       F
NLMNIAED                        U       U       I       F
NLMNIAUD                        U       U       I       F
NLMNIBGN                        U       U       I       F
NLMNIBRL                        U       U       I       F
NLMNICAD                        U       U       I       F
NLMNICHF                        U       U       I       F
NLMNICNY                        U       U       I       F
NLMNICZK                        U       U       I       F
NLMNIDKK                        U       U       I       F
NLMNIEEK                        U       U       I       F
NLMNIEGP                        U       U       I       F
NLMNIEUR                        U       U       I       F
NLMNIGBP                        U       U       I       F
NLMNIHKD                        U       U       I       F
NLMNIHRK                        U       U       I       F
NLMNIHUF                        U       U       I       F
NLMNIIDR                        U       U       I       F
NLMNIILS                        U       U       I       F
NLMNIINR                        U       U       I       F
NLMNIJPY                        U       U       I       F
NLMNIKRW                        U       U       I       F
NLMNILTL                        U       U       I       F
NLMNILVL                        U       U       I       F
NLMNIMOP                        U       U       I       F
NLMNIMXN                        U       U       I       F
NLMNIMYR                        U       U       I       F
NLMNINOK                        U       U       I       F
NLMNINZD                        U       U       I       F
NLMNIPLN                        U       U       I       F
NLMNIROL                        U       U       I       F
NLMNIRUB                        U       U       I       F
NLMNIRUR                        U       U       I       F
NLMNISEK                        U       U       I       F
NLMNISGD                        U       U       I       F
NLMNISKK                        U       U       I       F
NLMNITHB                        U       U       I       F
NLMNITRY                        U       U       I       F
NLMNITWD                        U       U       I       F
NLMNIUSD                        U       U       I       F
NLMNIZAR                        U       U       I       F
NLMNLAED                        U       U       I       F
NLMNLAUD                        U       U       I       F
NLMNLBGN                        U       U       I       F
NLMNLBRL                        U       U       I       F
NLMNLCAD                        U       U       I       F
NLMNLCHF                        U       U       I       F
NLMNLCNY                        U       U       I       F
NLMNLCZK                        U       U       I       F
NLMNLDKK                        U       U       I       F
NLMNLEEK                        U       U       I       F
NLMNLEGP                        U       U       I       F
NLMNLEUR                        U       U       I       F
NLMNLGBP                        U       U       I       F
NLMNLHKD                        U       U       I       F
NLMNLHRK                        U       U       I       F
NLMNLHUF                        U       U       I       F
NLMNLIDR                        U       U       I       F
NLMNLILS                        U       U       I       F
NLMNLINR                        U       U       I       F
NLMNLJPY                        U       U       I       F
NLMNLKRW                        U       U       I       F
NLMNLLTL                        U       U       I       F
NLMNLLVL                        U       U       I       F
NLMNLMOP                        U       U       I       F
NLMNLMXN                        U       U       I       F
NLMNLMYR                        U       U       I       F
NLMNLNOK                        U       U       I       F
NLMNLNZD                        U       U       I       F
NLMNLPLN                        U       U       I       F
NLMNLROL                        U       U       I       F
NLMNLRUB                        U       U       I       F
NLMNLRUR                        U       U       I       F
NLMNLSEK                        U       U       I       F
NLMNLSGD                        U       U       I       F
NLMNLSKK                        U       U       I       F
NLMNLTHB                        U       U       I       F
NLMNLTRY                        U       U       I       F
NLMNLTWD                        U       U       I       F
NLMNLUSD                        U       U       I       F
NLMNLZAR                        U       U       I       F
NLMNY                           U       U       I       F
NLMNYI                          U       U       I       F
NLNUM                           U       U       I       F
NLNUMI                          U       U       I       F
NLPCT                           U       U       I       F
NLPCTI                          U       U       I       F
NLTIMAP                         U       U       I       F
NLTIME                          U       U       I       F
NORDFDE                         U       U       I       F
NORDFDT                         U       U       I       F
NORDFMY                         U       U       I       F
NUMX                            U       U       I       F
OCTAL                           B       B       I       F
PCPIB                           U       U       I       F
PD                              B       B       I       F
PDJULG                          U       U       I       F
PDJULI                          U       U       I       F
PERCENT                         B       B       I       F
PIB                             B       B       I       F
PIBR                            B       B       I       F
PK                              B       B       I       F
POLDFDE                         U       U       I       F
POLDFDT                         U       U       I       F
POLDFMY                         U       U       I       F
PTGDFDE                         U       U       I       F
PTGDFDT                         U       U       I       F
PTGDFMY                         U       U       I       F
RB                              B       B       I       F
RUSDFDE                         U       U       I       F
RUSDFDT                         U       U       I       F
RUSDFMY                         U       U       I       F
S370FF                          U       U       I       F
S370FHEX                        U       U       I       F
S370FIB                         U       U       I       F
S370FIBU                        U       U       I       F
S370FPD                         U       U       I       F
S370FPDU                        U       U       I       F
S370FPIB                        U       U       I       F
S370FRB                         U       U       I       F
S370FZD                         U       U       I       F
S370FZDL                        U       U       I       F
S370FZDS                        U       U       I       F
S370FZDT                        U       U       I       F
S370FZDU                        U       U       I       F
SIZEKMG                         U       U       I       F
SLODFDE                         U       U       I       F
SLODFDT                         U       U       I       F
SLODFMY                         U       U       I       F
SVEDFDE                         U       U       I       F
SVEDFDT                         U       U       I       F
SVEDFMY                         U       U       I       F
TIME                            B       B       I       F
UNXEPOCH                        U       U       I       F
VAXRB                           U       U       I       F
VMSZN                           U       U       I       F
WEEKU                           U       U       I       F
WEEKV                           U       U       I       F
WEEKW                           U       U       I       F
XYYMMDD                         U       U       I       F
YEN                             U       U       I       F
YYMMDD                          B       B       I       F
YYMMN                           U       B       I       F
YYQ                             B       B       I       F
YYQZ                            U       U       I       F
ZD                              B       B       I       F
*/