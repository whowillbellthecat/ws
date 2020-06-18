/n.b. polynomials ordered by _descending_ power. In particular {|!x#y} where x is the number of
/     variables and y is the degree.
\l math.k

dec:{+/y*{y*[x]/1}'[x;|!#y]} /extend (n/x) to floats
D:{-1_x*|!#x}                /derivitive given polynomial coefficients
abs:{$[x<0;-x;x]}            /absolute value
root:{nm[1,(&x-1),-y]}       /x-root of y
nm:{*{1e-8<abs(-/x)}{|y,y-%/`f$dec[y:*y]'(x;D x)}[x]/1 -1} /newtons method
oD:{x/'y@/:(!#y)^/:!#y}      /gradient of x/y (for dyadic x)
sD:{oD[x;]'(1+!#y)#\:y}      /gradient of x\y (for dyadic x)

powers:{|'!x#_root[x;y]}              /powers of polynomial of x variables and length y
pad:{(&'(|/l)!-l:#'x),'x}             /make 2d list rectangular
mul:(,/*/:\:/)pad@                    /multiply (single variable) polynomial coefficient vectors 
simpl:{.+/'x@=+/powers[y;#x]}         /unify variables in y-variable polynomial
solve:{+/y**/pow''[x;powers[#x;*#y]]} /solve with coefs y and variables x

/n-term polynomial approximations; translated from Iverson's "Calculus" (in J)
e:{1.0%fact'|!x}           /exponential function
hsc:{(x#|!2)*e x}          /hyperbolic sine
hcc:{(x#!2)*e x}           /hyperbolic cosine
sc:{hsc[x]*x#1 0 -1 0}     /sine
cc:{hcc[x]*x#0 1 0 -1}     /cosine
