use strict;
use warnings;
use Catmandu::Importer::Blacklight;
use Test::More;

# skip live testing by default (mock server instead)
if ($ENV{RELEASE_TESTING}) {
    my $importer = Catmandu::Importer::Blacklight->new(
        url => 'http://lib.ugent.be/catalog',
        q => "hochstenbach",
    );

    my $record = $importer->first;

    ok $record , 'search';

    my $array = $importer->to_array;

    ok @$array > 10 , '>10 results'
}

done_testing;
