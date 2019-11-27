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
	my $self = shift;
	@_ ? $self->{_approved} = shift : $self->{_approved};
}

1;
