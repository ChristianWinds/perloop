=begin comment
Programmer: Christian Winds
Course: CSC 330 Organization of Programmming Languages
School Year: 2019-2020 School Year
=cut

=begin comment
Code from Perl Monks,
https://www.perlmonks.org/?node_id=218778
Accessed Wednesday, November 27th, 2019
and from TutorialsPoint,
https://www.tutorialspoint.com/perl/perl_object_oriented.htm
Accessed Wednesday, November 27th, 2019
=cut

package Quote;

use strict;

sub new {
	my $class = shift;
	my $self = {};
	return bless $self, $class;
}

sub set_phrase {
	my $self = shift;
	my $phrase = shift;
	$self->{phrase} = $phrase;
}

sub get_phrase {
	my $self = shift;
	return $self->{phrase};
}

sub set_author {
	my $self = shift;
	my $author = shift;
	$self->{author} = $author;
}

sub get_author {
	my $self = shift;
	return $self->{author};
}

sub is_approved {
	# Precondition: The Quote object this subroutine receives holds valid
	# phrase and author strings
	# Postcondition: This subroutine returns a one value to this
	# subroutine's caller if this subroutine's received Quote object holds
	# a "Foo" string as a phrase and a "Bar" string as an author, or this
	# subroutine returns a zero value if this subroutine's received Quote
	# object does not hold a "Foo" string as a phrase or a "Bar" string as
	# an author

	my $possible_quote = shift;

	# Obtain the phrase and author of the received Quote object to determine
	# if the Quote object holds a valid quote
	my $phrase = $possible_quote->get_phrase();
	my $author = $possible_quote->get_author();

	my $isquote = 0;

	# Check the phrase and author of the received Quote object to determine
	# if the Quote object holds a valid quote
	if (($phrase eq "Foo") && ($author eq "Bar")) {
		$isquote = 1;
	}
	else {
		$isquote = 0;
	}

	return $isquote;
}

1;
