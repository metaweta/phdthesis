#!/opt/local/bin/perl

# qhalf FN Fp < file.qh | qh2sk.pl
my $polys = <>;
my @p;
for (my $i=0; $i<$polys; ++$i) { 
  $p[$i] = [ split(' ', <>) ];
  shift @{$p[$i]};
}
my $dim = <>;
my $verts = <>;
my @v;
print "def fig {\n";
for (my $i=0; $i<$verts; ++$i) {
  my $tmp = <>;
  $tmp =~ /\s*(.*)/;
  $v[$i] = [ split(/\s+/, $1) ];
  print "  def p$i (".join(',',@{$v[$i]}).")\n";
}
for (my $i=0; $i<$polys; ++$i) {
  my $len = @{$p[$i]};
  print "  polygon[fill=".($len == 5?"red":$len == 4?"green":"blue").",cull=false,fill opacity=0.7](p".join(')(p',@{$p[$i]}).")\n";
}
 print "  special |\n";
 for (my $i=0; $i<$verts; ++$i){
   print "    \\node at #".($i+1)." [above] {\$$i\$};\n";
 }
 print "  |";
 for (my $i=0; $i<$verts; ++$i){
   print "(p$i)";
 }
 print "\n";
print "}\n";
#print "put { rotate(90,[0,1,0]) then rotate(90,[0,0,1]) then translate([0,0,-8.2]) then perspective(1) then scale(10)} {fig}\n";
#print "put { rotate(120,[0,1,0]) then rotate(45,[1,0,0]) then translate([0,0,-4]) then scale(4)} {fig}\n";
#print "put { rotate(15,[0,0,1]) then rotate(45,[0,1,0]) then scale(4)} {fig}\n";
print "put { translate([0,0,-8.2]) then perspective(1) then scale(10) } {fig}\n";
#print "put {rotate(180, [1,0,0]) then rotate(-45,[0,0,1]) then rotate(5, [1,0,0]) then translate([0,0,-2]) then perspective(1) then scale(4)}{fig}\n";
print "\nglobal { language tikz }\n";
