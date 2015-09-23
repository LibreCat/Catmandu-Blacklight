# NAME

Catmandu::Blacklight - Catmandu modules for working with Blacklight catalogs

# SYNOPSIS

    # From the command line
    $ catmandu convert Blacklight --url http://lib.ugent.be/catalog -q Schopenhauer
    
    # From Perl
    use Catmandu;

    my $importer = Catmandu->importer('Blacklight',
                        url => 'http://lib.ugent.be/catalog' , 
                        q   => 'Schopenhauer');

    $importer->each(sub {
             my $item = shift;
             print "%s %s\n", $item->{_id} , $item->{title}->[0];
    });

# MODULES

- [Catmandu::Importer::Blacklight](https://metacpan.org/pod/Catmandu::Importer::Blacklight)

# AUTHOR

Patrick Hochstenbach, `<patrick.hochstenbach at ugent.be>`

# LICENSE AND COPYRIGHT

Copyright 2015 Ghent University Library

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.
