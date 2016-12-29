
use strict;
use warnings;

use lib 'lib';

use Dancer2;
use Dancer2::Plugin::Auth::Extensible;


get '/' => sub {
    require Data::Dumper;
    return "Hello World!\n\n\n<pre>".Data::Dumper::Dumper(logged_in_user);
};


dance;