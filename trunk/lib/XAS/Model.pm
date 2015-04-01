package XAS::Model;

our $VERSION = '0.01';

1;

__END__
  
=head1 NAME

XAS::Model - Database abstraction layer for the XAS Middleware Suite

=head1 DESCRIPTION

The database abstraction layer is built upon L<https://metacpan.org/pod/DBIx::Class|DBIx::Class> 
which is robust ORM for Perl. The modules provided try to make working with 
databases easier.

=head1 SEE ALSO

=over 4

=item L<XAS|XAS>

=item L<XAS::Model::Database|XAS::Model::Database>

=item L<XAS::Model::DBM|XAS::Model::DBM>

=item L<XAS::Model::Schema|XAS::Model::Schema>

=item L<XAS::Apps::Database::ExtractData|XAS::Apps::Database::ExtractData>

=item L<XAS::Apps::Database::ExtractGlobals|XAS::Apps::Database::ExtractGlobals>  

=item L<XAS::Apps::Database::RemoveData|XAS::Apps::Database::RemoveData>

=item L<XAS::Apps::Database::Schema|XAS::Apps::Database::Schema>

=back

=head1 AUTHOR

Kevin L. Esteb, E<lt>kevin@kesteb.usE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2014 Kevin L. Esteb

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.8 or,
at your option, any later version of Perl 5 you may have available.

See L<http://dev.perl.org/licenses/> for more information.

=cut
