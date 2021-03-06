use inc::Module::Install;

RTx('RT-Authen-Bitcard');

abstract_from   ('lib/RT/Authen/Bitcard.pm');
license         ('GPL2');
all_from        ('lib/RT/Authen/Bitcard.pm');

requires_rt('4.0.0');

requires        ('Authen::Bitcard' => '0.86'); # we need register_url method
requires        ('Encode');

auto_install();

WriteAll();
