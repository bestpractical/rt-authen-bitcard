use inc::Module::Install;

RTx('RT-Authen-Bitcard');

name            ('RT-Authen-Bitcard');
abstract        ('Allows RT to do authentication via a service which supports the Bitcard API');
author          ('Kevin Riggle <kevinr@bestpractical.com>');
version_from    ('lib/RT/Authen/Bitcard.pm');
license         ('GPL version 2');

requires        ('Authen::Bitcard');
requires        ('Encode');

&WriteAll;
