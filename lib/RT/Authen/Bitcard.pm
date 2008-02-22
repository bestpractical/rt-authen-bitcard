
=head1 COPYRIGHT

This extension is Copyright (C) 2005 Best Practical Solutions, LLC.

It is freely redistributable under the terms of version 2 of the GNU GPL.

=cut

package RT::Authen::Bitcard;

our $VERSION = '0.03';

use Authen::Bitcard 0.86;

sub handler {
    my $self = shift;

    die 'No Bitcard auth token provided as $BitcardToken in the RT configuration file on this server.'
        unless $RT::BitcardToken;

    my $bc = Authen::Bitcard->new;
    $bc->token( $RT::BitcardToken );
    $bc->info_required('email,username');
    $bc->info_optional('name');
    return $bc;
}

1;
