data _null_;

  do i = 1 to 10;

     j = i**2;
     k = i**3;

     put @1  i 2.-r
         @4  '|'
         @6  j 3.-r
         @10 '|'
         @12 k 4.-r;

  end;

run;

/*
 1 |   1 |    1
 2 |   4 |    8
 3 |   9 |   27
 4 |  16 |   64
 5 |  25 |  125
 6 |  36 |  216
 7 |  49 |  343
 8 |  64 |  512
 9 |  81 |  729
10 | 100 | 1000
*/