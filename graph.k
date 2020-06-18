lm:{~^x?\:!#x}  /adj list -> adj matrix
pl:{unfix@,'x}  /parent pointer vector -> adj list
ml:(&:')        /adj matrix -> adj list

fix:{x[w]:,'(!#x)@w:&x~\:!0;x}      /convert empty vectors in adj list to point to themselves 
unfix:{x[w]:(#w:&(!#x)~'*'x)#,!0;x} /convert nodes that point to themselves in adj list to empty vectors
diag:{x*=#x:+/+/'(x;+x)}            /adj matrix -> diagonal matrix
edges:{,/w,''x@w:&~x~\:!0}          /adjacency list -> edge list
incidence:{+0^z@x?\:!y}             /edge list -> node count -> direction vector (e.g 1 -1) -> incidence matrix
laplacian:{diag[x]-x}               /adj matrix (of simple undirected graph) -> discrete laplacian
laplacian2:{x(+/*)\:+x}             /oriented incidence matrix -> discrete laplacian

/see http://nsl.com/k9/trees.k and Aaron Hsu's paper
depth:{+/+/''^(&x~\:!0)?/:(,/'x@)\!#x} /fixed adj list (of acyclic graph) -> depth vector
ncl:{(x+1)#'+\x=/:\:!1+|/x}            /depth vector -> node coordinate list (0's ommitted)
ncm:{((|+\)'d)*+\d:x=/:\:!1+|/x}       /depth vector -> node coordinate matrix

closure:{x|x(|/&)\:x}                  /transitive closure of adj matrix
reduction:{x&~x(|/&)\:x|x(|/&)\:x}     /transitive reduction of adj matrix
refl:{:x[&'=#x]:0}                     /reflexive reduction of adj matrix