a:`c$,/("Aa0"+!'26 26 10),"+/"  /base64 alphabet
h:`c$,/"0a"+!'10 6              /hex alphabet (lowercase)

hn:{h?_x}                                              /hex -> [0,15] vec
hex:{`c$2/+0N 8#,/+(4#2)\hn x}                         /hex -> bytestring
hb:{fmt(a@2/+0N 6#x,&2*p),(p:3!#x:,/+(4#2)\hn x)#"="}  /hex -> base64
bits:{,/+(8#2)\hex x}                                  /hex -> [0,1] vec

xor:{h@2/+0N 4#~bits[x]=bits y}                        /xor : hex -> hex -> hex

fmt:{"\n"/(0,76*1+!(-1+#x)%76)_x}                      /add newlines
enc:{fmt(a@2/+0N 6#x,&2*p),(p:3!#x:,/+(8#2)\0+x)#"="}  /encode
dec:{`c$2/+0N 8#(-2*+/"="=x)_,/+(6#2)\a?x^"\n="}       /decode

tests:({x~dec'enc'x};{(enc'x)~run'x})
gen:{`c$(1+x?y)?\:255}         /generate random test data
run:{-1_`x@(,"/bin/base64";x)} /run system base64
test:tests@\:gen[500]@         /test x times with random strings
