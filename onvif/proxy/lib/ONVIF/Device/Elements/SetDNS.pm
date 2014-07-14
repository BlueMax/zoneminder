
package ONVIF::Device::Elements::SetDNS;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://www.onvif.org/ver10/device/wsdl' }

__PACKAGE__->__set_name('SetDNS');
__PACKAGE__->__set_nillable();
__PACKAGE__->__set_minOccurs();
__PACKAGE__->__set_maxOccurs();
__PACKAGE__->__set_ref();

use base qw(
    SOAP::WSDL::XSD::Typelib::Element
    SOAP::WSDL::XSD::Typelib::ComplexType
);

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %FromDHCP_of :ATTR(:get<FromDHCP>);
my %SearchDomain_of :ATTR(:get<SearchDomain>);
my %DNSManual_of :ATTR(:get<DNSManual>);

__PACKAGE__->_factory(
    [ qw(        FromDHCP
        SearchDomain
        DNSManual

    ) ],
    {
        'FromDHCP' => \%FromDHCP_of,
        'SearchDomain' => \%SearchDomain_of,
        'DNSManual' => \%DNSManual_of,
    },
    {
        'FromDHCP' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'SearchDomain' => 'SOAP::WSDL::XSD::Typelib::Builtin::token',
        'DNSManual' => 'ONVIF::Device::Types::IPAddress',
    },
    {

        'FromDHCP' => 'FromDHCP',
        'SearchDomain' => 'SearchDomain',
        'DNSManual' => 'DNSManual',
    }
);

} # end BLOCK







} # end of BLOCK



1;


=pod

=head1 NAME

ONVIF::Device::Elements::SetDNS

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
SetDNS from the namespace http://www.onvif.org/ver10/device/wsdl.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * FromDHCP

 $element->set_FromDHCP($data);
 $element->get_FromDHCP();




=item * SearchDomain

 $element->set_SearchDomain($data);
 $element->get_SearchDomain();




=item * DNSManual

 $element->set_DNSManual($data);
 $element->get_DNSManual();





=back


=head1 METHODS

=head2 new

 my $element = ONVIF::Device::Elements::SetDNS->new($data);

Constructor. The following data structure may be passed to new():

 {
   FromDHCP =>  $some_value, # boolean
   SearchDomain =>  $some_value, # token
   DNSManual =>  { # ONVIF::Device::Types::IPAddress
     Type => $some_value, # IPType
     IPv4Address => $some_value, # IPv4Address
     IPv6Address => $some_value, # IPv6Address
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

