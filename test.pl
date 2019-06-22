use strict;
use warnings;
use utf8;
use lib "./local/lib/perl5";
use DBI;
use Test::Simple tests => 2;

ok( 1 + 1 == 2 );
ok( 2 + 2 == 4 );

my $dbh = DBI->connect(
  "DBI:MariaDB:dbname=circleci".
  ";host=127.0.0.1".
  ";mariadb_connect_timeout=10",
  "root", ""
);

my $sth = $dbh->prepare("SELECT * FROM cats WHERE id = ?");
$sth->execute(1);
my $hash_ref = $sth->fetchrow_hashref;
print $hash_ref->{name};
print $hash_ref->{color};

ok( $hash_ref->{name} eq "りん" );
ok( $hash_ref->{color} eq "シャム" );
