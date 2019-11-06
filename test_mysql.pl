use strict;
use warnings;
use utf8;
use lib "./local/lib/perl5";
use Encode;
use DBI;

use Data::Dumper;

my $dbh = DBI->connect(
  "DBI:MariaDB:dbname=circleci".
  ";host=db",
  "root", "example"
);

$dbh->do("set names utf8");

my $sth = $dbh->prepare("SELECT * FROM cats WHERE id = ?");
$sth->execute(1);

my $hash_ref = $sth->fetchrow_hashref;


print "-------\n";
print Data::Dumper::Dumper $hash_ref;
print "\n-------\n";
print encode( 'utf8', $hash_ref->{name});
print "\n-------\n";