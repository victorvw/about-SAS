data _null_;
  category     = fmtinfo('mmddyy', 'cat' ); put category    =;
  type         = fmtinfo('mmddyy', 'type'); put type        =;
  description  = fmtinfo('mmddyy', 'desc'); put description =;
  minWidth     = fmtinfo('mmddyy', 'minw'); put minWidth    =;
  maxWidth     = fmtinfo('mmddyy', 'maxw'); put maxWidth    =;
  defaultWidth = fmtinfo('mmddyy', 'defw'); put defaultWidth=;
  minDecimals  = fmtinfo('mmddyy', 'mind'); put minDecimals =;
  maxDecimals  = fmtinfo('mmddyy', 'maxd'); put maxDecimals =;
run;
