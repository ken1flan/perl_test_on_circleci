use strict;
use warnings;
use utf8;
use lib "./local/lib/perl5";

use Log::Log4perl qw(:easy);
use WWW::Mechanize::Chrome;

use Test::Simple tests => 1;

my $mech = WWW::Mechanize::Chrome->new(headless=> 1);
$mech->get('http://localhost/cgi-bin/index.cgi');
my $content = $mech->content;

ok( $content =~ /Hello, World/ );
