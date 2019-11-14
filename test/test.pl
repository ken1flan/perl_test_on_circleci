use strict;
use warnings;
use utf8;
use open IO => qw/:encoding(UTF-8) :std/;
use lib "./local/lib/perl5";
use Config::YAML;
use Encode::Guess qw/cp932 euc-jp 7bit-jis utf8 latin1/;
use DBI;
use FindBin qw($Bin);
use Test::Simple tests => 2;

my $env = $ENV{APP_ENV} ? $ENV{APP_ENV} : 'development';
my $config = Config::YAML->new(config => "$Bin/../${env}.yml");

my $dbh = DBI->connect(
  "DBI:MariaDB:dbname=".$config->{database}->{dbname}.
  ";host=".$config->{database}->{host}.
  ";mariadb_connect_timeout=".$config->{database}->{timeout},
  $config->{database}->{user}, $config->{database}->{password}
);

my $sth = $dbh->prepare("SELECT * FROM cats WHERE id = ?");
$sth->execute(1);
my $hash_ref = $sth->fetchrow_hashref;

ok( $hash_ref->{name} eq "りん" );
ok( $hash_ref->{color} eq "シャム" );
