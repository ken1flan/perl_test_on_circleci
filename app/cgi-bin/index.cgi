#!/usr/bin/perl
use strict;
use warnings;
use utf8;
use File::Basename;
my $dir = dirname(__FILE__);
require "${dir}/../ApplicationCommon.pm";

my $dbh = $ApplicationCommon::dbh;
my $sth = $dbh->prepare("SELECT * FROM CatColors ORDER BY RAND() LIMIT 1");
$sth->execute();
my $cat_color = $sth->fetchrow_hashref;
(my $search_word = $cat_color->{name_en}) =~ s/ /+/g;

print "Content-type: text/html\n\n";
print <<"EOF";
<html>
  <head>
    <title>ラッキーにゃんこ、なう☆</title>
  </head>
  <body>
    <h1>
      <a href="https://www.google.co.jp/search?q=${search_word}+cat&tbm=isch">
        ただいまのラッキーにゃんこは$cat_color->{name_jp}です☆
      </a>
    </h1>
  </body>
</html>
EOF
