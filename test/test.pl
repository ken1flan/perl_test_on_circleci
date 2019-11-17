use strict;
use warnings;
use utf8;

use FindBin qw($Bin);
use lib "$Bin/..";
use ApplicationCommon;

use Test::Simple tests => 2;

my $dbh = $ApplicationCommon::dbh;

my $sth = $dbh->prepare("SELECT * FROM CatColors WHERE id = ?");
$sth->execute(1);
my $hash_ref = $sth->fetchrow_hashref;

ok( $hash_ref->{name_en} eq "red tabby" );
ok( $hash_ref->{name_jp} eq "茶トラ" );
