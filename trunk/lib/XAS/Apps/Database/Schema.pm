package XAS::Apps::Database::Schema;

use XAS::Model::Database
  schema => 'XAS::Model::Database',
  tables => ':all'
;

use XAS::Class
  debug     => 0,
  version   => '0.02',
  base      => 'XAS::Lib::App',
  accessors => 'dbtype revision directory database db',
;

# ----------------------------------------------------------------------
# Public Methods
# ----------------------------------------------------------------------

sub setup {
    my $self = shift;

    my $database = $self->database;

    $self->{db} = XAS::Model::Database->opendb($database);

}

sub main {
    my $self = shift;

    $self->setup();

    $self->log->info('starting up');

    $self->db->create_ddl_dir(
        [$self->dbtype],
        $self->revision,
        $self->directory,
    );

    $self->log->info('shutting down');

}

sub options {
    my $self = shift;

    $self->{dbtype}    = 'SQLite';
    $self->{revision}  = '0.01';
    $self->{directory} = './sql/';
    $self->{database}  = 'database';

    return {
        'dbtype=s'    => \$self->{dbtype},
        'revision=s'  => \$self->{revision},
        'directory=s' => \$self->{directory},
        'database=s'  => \$self->{database},
    };

}

# ----------------------------------------------------------------------
# Private Methods
# ----------------------------------------------------------------------

1;

__END__

=head1 NAME

XAS::Apps::Database::Schema - Create a database schema

=head1 SYNOPSIS

 use XAS::Apps::Database::Schema;

 my $app = XAS::Apps::Database::Schema->new();

 exit $app->run();

=head1 DESCRIPTION

This module will create a schema for the XAS database. It inherits from
L<XAS::Lib::App>. Please see that module for additional documentation.

=head1 OPTIONS

This modules provides these additonal cli options.

=head2 --dbtype

The type of database. This can be one of the following:

 PostgreSQL 
 SQLite
 MySQL

Or any other SQL::Translater database name.

=head2 --revision

The revision for this schema. Defaults to "0.01".

=head2 --directory

The directory to write the schema into. Defaults to "./sql.".

=head1 SEE ALSO

=over 4

=item bin/xas-create-schema

=item L<XAS|XAS>

=back

=head1 AUTHOR

Kevin L. Esteb, E<lt>kevin@kesteb.usE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2012 by Kevin L. Esteb

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.8 or,
at your option, any later version of Perl 5 you may have available.

=cut
