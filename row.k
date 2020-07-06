/convert rectangular matrix into reduced row echelon form via Gauss-Jordan algorithm.
row:{*|(~|/((#x),#*x)=2#)({$[&/f:(x>!#z)|e:0=z@'y;(x;y+1;z);~x=i:*&~f;(x;y;(z[i,x],z(!#z)^i,x)@<x,i,(!#z)^i,x);(x+1;y+1;z-(#[+/e;,0],z[x]*/:(z:{z[x]%:z[x;y];z}[x;y;`f$z])[&~e;y])@<(&e),&~e:e|x=!#z)]}.)/(0;0;x)}

inv:{$[(=l)~`i$l#'r:row x,'`l$=l:#x;l_'r;(2#l)#0]} /matrix inverse via Gauss-Jordan; x must be a square matrix
