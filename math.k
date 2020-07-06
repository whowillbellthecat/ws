sin:{((pi-x)*16*x)%(5*pi*pi)-4*x*(pi-x)} /Bhaskara I's approximations
cos:{((pi*pi)-4*x*x)%(pi*pi)+x*x}        /n.b. x is in in radians
rad:{pi*(180!x)%180.0}                   /convert degrees to radians modulo 180
pi:22%7.0                                /pi approx

trunc:{(_n*x)%`f$n:pow[10;y]}            /truncate numeric x to at most y>0 decimal places
gcd:{(*|(*:)(|!\)/)'+(x;y)}              /Eulid's algorithm
lcm:{y*x%gcd[x;y]}                       /lowest common multiple
fact:*/1+!:                              /factorial
trace:{*+/x@'&'=#x}                      /sum of diagonal of matrix

fib:(1 1; 1 0)               /fibonacci matrix
nfib:{**gpow[fib;x;(+/*)\:]} /nth fibonacci term
catalan:{-1_x{x,+/x[t]*x@n-1+t:!n:#x}/1 1} /catalan numbers until x

pow:{*/((-1+#y){x*x}\x)@&|y:2\y}     /fast powers
gpow:{z/((-1+#y){x[y;y]}[z]\x)@&|y:2\y} /fast powers given arbitrary multiplication function
modexp:{(z!*)/((-1+#y){x!y*y}[z]\x)@&|y:2\y} /fast modular exponention

foldr:{x({x[z;y]}[y].)/z}
oblique:{l,'x,'|l:(!#x)#'y}          /oblique matrix filled with id elem y
