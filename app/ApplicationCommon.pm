package ApplicationCommon;

use strict;
use warnings;
use utf8;
use File::Basename;

use Config::YAML;
use DBI;

our $app_root_dir = dirname(__FILE__);
our $app_env = $ENV{APP_ENV} ? $ENV{APP_ENV} : 'development';
our $config = Config::YAML->new(config => "$app_root_dir/${app_env}.yml");
our $dbh = DBI->connect(
  "DBI:MariaDB:dbname=".$config->{database}->{dbname}.
  ";host=".$config->{database}->{host}.
  ";mariadb_connect_timeout=".$config->{database}->{timeout},
  $config->{database}->{user}, $config->{database}->{password}
);

1;
