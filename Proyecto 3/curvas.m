clc
clear
pkg load signal
sf = 60e3 ; sf2 = sf / 2;
fc_1 = 50;
fc_2 = 3e3 ;
fid = fopen('Binario.m');
tline = fgetl(fid);
vect = [];
n = 1;
while ischar(tline)
    vect(n) = bin2dec(tline) / 1677721.6;
    n = n+1;
    tline = fgetl(fid);
end
fclose(fid);
data=[[1;zeros(sf - 1,1)],sinetone(fc_1 , sf ,1 ,1) + sinetone(fc_2 ,sf , 1,1)];
[b_1,a_1 ]= butter ( 1 , fc_1 / sf2);
filtered_1 = filter ( b_1 , a_1 , data ) ;
[ b_2 , a_2 ]= butter ( 1 , fc_2 / sf2 , "high" );
filtered_2 = filter ( b_2 , a_2 , data ) ;
data =[ sinetone( fc_1 , sf ,1 ,1 ) + sinetone( fc_2 , sf ,1 ,1 ) ] * 2.5 / 2 ;

clf
subplot ( 4 , 1 , 1 )
plot ( vect , "; Entrada ; " )
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