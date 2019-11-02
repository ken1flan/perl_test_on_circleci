use strict;
use warnings;
use utf8;
use open IO => qw/:encoding(UTF-8) :std/;
use lib "./local/lib/perl5";
use Encode::Guess qw/cp932 euc-jp 7bit-jis utf8 latin1/;
use DBI;
use Test::Simple tests => 2;

my $dbh = DBI->connect(
  "DBI:MariaDB:dbname=circleci".
  ";host=127.0.0.1".
  ";mariadb_connect_timeout=10",
  "root", ""
);
$dbh->do("set names utf8");

my $sth = $dbh->prepare("SELECT * FROM cats WHERE id = ?");
$sth->execute(1);
my $hash_ref = $sth->fetchrow_hashref;

ok( $hash_ref->{name} eq "Rin" );
ok( $hash_ref->{color} eq "Siamese" );
