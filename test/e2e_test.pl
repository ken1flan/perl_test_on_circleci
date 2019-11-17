use strict;
use warnings;
use utf8;
use lib "./local/lib/perl5";

use Log::Log4perl qw(:easy);
use WWW::Mechanize::Chrome;

use Test::Simple tests => 1;

my $mech = WWW::Mechanize::Chrome->new(headless=> 1);
$mech->get('http://127.0.0.1/cgi-bin/index.cgi');
my $content = $mech->content;

print '\n----------\n';
print $content;
print '\n----------\n';
ok( $content =~ /ただいまのラッキーにゃんこは(茶トラ|サバトラ|キジトラ|ヒョウ柄|三毛|ブチ|サビ|シャム|黒|白|灰)です☆/ );
