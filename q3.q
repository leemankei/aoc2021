m:read0 `:q3.txt

o:2 sv "I"$/:first {[m;x] 
    if [1 = count m; :m]
    b:"01" (.5 * count m) <= sum "1"~/:m[;x];
    m where b ~/:m[;x]
    }/[m; til count m 0] ;

co:2 sv "I"$/:first {[m;x] 
    if [1 = count m; :m]
    b:"01" (.5 * count m) > sum "1"~/:m[;x];
    m where b ~/:m[;x]
    }/[m; til count m 0] ;

o * co
