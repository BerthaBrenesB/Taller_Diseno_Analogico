clc
clear
pkg load signal
sf = 60e3 ; sf2 = sf / 2;
fc_1 = 30;
fc_2 = 3e3 ;
data=[[1;zeros(sf - 1,1)],sinetone(fc_1 , sf ,1 ,1) + sinetone(fc_2 ,sf , 1,1)];
[b_1,a_1 ]= butter ( 1 , fc_1 / sf2);
filtered_1 = filter ( b_1 , a_1 , data ) ;
[ b_2 , a_2 ]= butter ( 1 , fc_2 / sf2 , "high" );
filtered_2 = filter ( b_2 , a_2 , data ) ;
data =[ sinetone( fc_1 , sf ,1 ,1 ) + sinetone( fc_2 , sf ,1 ,1 ) ] * 2.5 / 2 ;
fid = fopen ("Binario.txt");
% save full lines into a new file if only chars inside
txtread = fgetl (fid)
num_of_lines = fskipl(fid, Inf);
char = 'crossplane-x-'
for i=1:num_of_lines,
  if char in fgetl(fid)
    [x, nx] = fscanf(fid);
    print x
  endif
endfor
fclose (fid);
clf
subplot ( 4 , 1 , 1 )
plot ( data , "; Entrada ; " )
axis ( [ 0 fc_1* 200] )
subplot ( 4 , 1 , 2 )
plot ( filtered_1 ( : , 2 ) , "; F i l t r o pasa b a j a s ; " )
axis ( [ 0 fc_1 * 200] )
subplot ( 4 , 1 , 3 )
plot (  filtered_2 ( : , 2 ) , "; F i l t r o pasa a l t a s ; " )
axis ( [ 0 fc_1 * 200] )
subplot ( 4 , 1 , 4 )
plot (  filtered_2 ( : , 2 ) , " ; F i l t r o pasa a l t a s ; " )
axis ( [ 0 fc_1 * 5 ] )