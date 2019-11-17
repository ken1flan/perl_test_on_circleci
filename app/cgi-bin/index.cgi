#!/usr/bin/perl

my $name_en = "red tabby";
my $name_jp = "茶トラ";
(my $search_word = $name_en) =~ s/ /+/g;

print "Content-type: text/html\n\n";
print <<"EOF";
<html>
  <head>
    <title>ラッキーにゃんこ、なう☆</title>
  </head>
  <body>
    <h1>
      <a href="https://www.google.co.jp/search?q=${search_word}+cat&tbm=isch">
        ただいまのラッキーにゃんこは${name_jp}です☆
      </a>
    </h1>
  </body>
</html>
EOF
