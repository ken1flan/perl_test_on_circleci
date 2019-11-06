use strict;
use warnings;
use utf8;
use open IO => qw/:encoding(UTF-8) :std/;
use lib "./local/lib/perl5";
use Config::YAML;
use Encode;
use Encode::Guess qw/cp932 euc-jp 7bit-jis utf8 latin1/;
use DBI;
use Test::Simple tests => 2;

use Data::Dumper;

my $env = $ENV{APP_ENV} ? $ENV{APP_ENV} : 'development';
my $config = Config::YAML->new(config => "./${env}.yml");

my $dbh = DBI->connect(
  "DBI:MariaDB:dbname=".$config->{database}->{dbname}.
  ";host=".$config->{database}->{host}.
  ";mariadb_connect_timeout=".$config->{database}->{timeout},
  $config->{database}->{user}, $config->{database}->{password}
);
$dbh->do("set names utf8");

my $sth = $dbh->prepare("SELECT * FROM cats WHERE id = ?");
$sth->execute(1);
my $hash_ref = $sth->fetchrow_hashref;

print "-------\n";
print "りん\n";
print "-------\n";
my $test_hash = { 'name' => 'りん' };
print Data::Dumper::Dumper $test_hash;
print "-------\n";
print Data::Dumper::Dumper $hash_ref;
print "-------\n";
print %$hash_ref;
print "\n-------\n";
print $hash_ref->{name};
print "\n-------\n";
print encode('UTF-8',$hash_ref->{name});
print "\n-------xxx\n";
#print decode('UTF-8','りん');
print "\n-------\n";

ok( $hash_ref->{name} eq "Rin" );
ok( $hash_ref->{color} eq "Siamese" );
