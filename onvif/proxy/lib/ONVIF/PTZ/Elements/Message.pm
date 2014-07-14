
package ONVIF::PTZ::Elements::Message;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://www.onvif.org/ver10/schema' }

__PACKAGE__->__set_name('Message');
__PACKAGE__->__set_nillable();
__PACKAGE__->__set_minOccurs();
__PACKAGE__->__set_maxOccurs();
__PACKAGE__->__set_ref();

use base qw(
    SOAP::WSDL::XSD::Typelib::Element
    SOAP::WSDL::XSD::Typelib::ComplexType
);

our $XML_ATTRIBUTE_CLASS = 'ONVIF::PTZ::Elements::Message::XmlAttr';

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Source_of :ATTR(:get<Source>);
my %Key_of :ATTR(:get<Key>);
my %Data_of :ATTR(:get<Data>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        Source
        Key
        Data
        Extension

    ) ],
    {
        'Source' => \%Source_of,
        'Key' => \%Key_of,
        'Data' => \%Data_of,
        'Extension' => \%Extension_of,
    },
    {
        'Source' => 'ONVIF::PTZ::Types::ItemList',
        'Key' => 'ONVIF::PTZ::Types::ItemList',
        'Data' => 'ONVIF::PTZ::Types::ItemList',
        'Extension' => 'ONVIF::PTZ::Types::MessageExtension',
    },
    {

        'Source' => 'Source',
        'Key' => 'Key',
        'Data' => 'Data',
        'Extension' => 'Extension',
    }
);

} # end BLOCK




package ONVIF::PTZ::Elements::Message::XmlAttr;
use base qw(SOAP::WSDL::XSD::Typelib::AttributeSet);

{ # BLOCK to scope variables

my %UtcTime_of :ATTR(:get<UtcTime>);
my %PropertyOperation_of :ATTR(:get<PropertyOperation>);

__PACKAGE__->_factory(
    [ qw(
        UtcTime
        PropertyOperation
    ) ],
    {

        UtcTime => \%UtcTime_of,

        PropertyOperation => \%PropertyOperation_of,
    },
    {
        UtcTime => 'SOAP::WSDL::XSD::Typelib::Builtin::dateTime',
        PropertyOperation => 'ONVIF::PTZ::Types::PropertyOperation',
    }
);

} # end BLOCK



} # end of BLOCK



1;


=pod

=head1 NAME

ONVIF::PTZ::Elements::Message

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
Message from the namespace http://www.onvif.org/ver10/schema.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Source

 $element->set_Source($data);
 $element->get_Source();




=item * Key

 $element->set_Key($data);
 $element->get_Key();




=item * Data

 $element->set_Data($data);
 $element->get_Data();




=item * Extension

 $element->set_Extension($data);
 $element->get_Extension();





=back


=head1 METHODS

=head2 new

 my $element = ONVIF::PTZ::Elements::Message->new($data);

Constructor. The following data structure may be passed to new():

 {
   Source =>  { # ONVIF::PTZ::Types::ItemList
     SimpleItem => ,
     ElementItem =>  {
     },
     Extension =>  { # ONVIF::PTZ::Types::ItemListExtension
     },
   },
   Key =>  { # ONVIF::PTZ::Types::ItemList
     SimpleItem => ,
     ElementItem =>  {
     },
     Extension =>  { # ONVIF::PTZ::Types::ItemListExtension
     },
   },
   Data =>  { # ONVIF::PTZ::Types::ItemList
     SimpleItem => ,
     ElementItem =>  {
     },
     Extension =>  { # ONVIF::PTZ::Types::ItemListExtension
     },
   },
   Extension =>  { # ONVIF::PTZ::Types::MessageExtension
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

