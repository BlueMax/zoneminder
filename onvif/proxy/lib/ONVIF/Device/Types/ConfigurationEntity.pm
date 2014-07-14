package ONVIF::Device::Types::ConfigurationEntity;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS = 'ONVIF::Device::Types::ConfigurationEntity::_ConfigurationEntity::XmlAttr';

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Name_of :ATTR(:get<Name>);
my %UseCount_of :ATTR(:get<UseCount>);

__PACKAGE__->_factory(
    [ qw(        Name
        UseCount

    ) ],
    {
        'Name' => \%Name_of,
        'UseCount' => \%UseCount_of,
    },
    {
        'Name' => 'ONVIF::Device::Types::Name',
        'UseCount' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
    },
    {

        'Name' => 'Name',
        'UseCount' => 'UseCount',
    }
);

} # end BLOCK




package ONVIF::Device::Types::ConfigurationEntity::_ConfigurationEntity::XmlAttr;
use base qw(SOAP::WSDL::XSD::Typelib::AttributeSet);

{ # BLOCK to scope variables

my %token_of :ATTR(:get<token>);

__PACKAGE__->_factory(
    [ qw(
        token
    ) ],
    {

        token => \%token_of,
    },
    {
        token => 'ONVIF::Device::Types::ReferenceToken',
    }
);

} # end BLOCK




1;


=pod

=head1 NAME

ONVIF::Device::Types::ConfigurationEntity

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ConfigurationEntity from the namespace http://www.onvif.org/ver10/schema.

Base type defining the common properties of a configuration.




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Name


=item * UseCount




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Device::Types::ConfigurationEntity
   Name => $some_value, # Name
   UseCount =>  $some_value, # int
 },



=head2 attr

NOTE: Attribute documentation is experimental, and may be inaccurate.
See the correspondent WSDL/XML Schema if in question.

This class has additional attributes, accessibly via the C<attr()> method.

attr() returns an object of the class ONVIF::Device::Types::ConfigurationEntity::_ConfigurationEntity::XmlAttr.

The following attributes can be accessed on this object via the corresponding
get_/set_ methods:

=over

=item * token

 Token that uniquely refernces this configuration. Length up to 64 characters.



This attribute is of type L<ONVIF::Device::Types::ReferenceToken|ONVIF::Device::Types::ReferenceToken>.


=back




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

