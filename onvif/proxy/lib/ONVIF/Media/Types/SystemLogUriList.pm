package ONVIF::Media::Types::SystemLogUriList;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %SystemLog_of :ATTR(:get<SystemLog>);

__PACKAGE__->_factory(
    [ qw(        SystemLog

    ) ],
    {
        'SystemLog' => \%SystemLog_of,
    },
    {
        'SystemLog' => 'ONVIF::Media::Types::SystemLogUri',
    },
    {

        'SystemLog' => 'SystemLog',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::SystemLogUriList

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
SystemLogUriList from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * SystemLog




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::SystemLogUriList
   SystemLog =>  { # ONVIF::Media::Types::SystemLogUri
     Type => $some_value, # SystemLogType
     Uri =>  $some_value, # anyURI
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

