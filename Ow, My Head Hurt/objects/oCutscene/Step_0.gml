//fade in/out
if ( !fadeout ) a = max( a -0.005, 0.25 ); else a = min( a + 0.005, 1 );

l += 0.6;
print = string_copy( str, 1, l );
str = strings[next];
