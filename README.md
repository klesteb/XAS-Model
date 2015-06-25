XAS Model - The database absraction layer for the XAS Environment
=================================================================

XAS is a set of modules, procedures and practices to help write
consistent Perl5 code for an operations environment. For the most part,
this follows the Unix tradition of small discrete components that
communicate in well defined ways.

This system is cross platform capable. It will run under Windows as well
as Unix like environments without a code rewrite. This allows you to
write your code once and run it wherever.

Installation of this system is fairly straight forward. You can install
it in the usual Perl fashion or there are build scripts for creating
Debian and RHEL install packages. Please see the included README for
details.

This package provides the database abstraction layer. It is built on the
ORM provided by DBIx::Class. There are procedures to create a database
schema, along with the ability to parse PostgreSQL backup files. 

Extended documentation is available at: http://scm.kesteb.us/trac

