use strict;
use warnings;
use utf8;
use lib "./local/lib/perl5";

use Log::Log4perl qw(:easy);
use WWW::Mechanize::Chrome;

my $mech = WWW::Mechanize::Chrome->new(headless=> 1);
$mech->get('http://localhost/cgi-bin/index.cgi');
my $png = $mech->content_as_png();

open my $out, '>', 'outfile.png' or die "Couldn't create png: $!";
binmode $out;
print { $out } $png;
