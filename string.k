/string matching and substitution

/sm : pattern -> string -> match position vector.
sm:{|@[;1](#y)({[k;p;h;s](p^#k;h,(();-1+#s)@|/(#k)~/:p:(p+(k@/:p:p,0)~\:*|s)^0;-1_s)}[|x].)/(!0;!0;y)}

/gsub : string -> pattern -> replacement -> new string
gsub:{,/(((#p)#,y),((,/0,p,'p+#x)_z)@v)@<(1+v),v:2*!#p:sm[x;z]}
