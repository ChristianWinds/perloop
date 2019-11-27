=begin comment
Programmer: Christian Winds
Course: CSC 330 Organization of Programmming Languages
School Year: 2019-2020 School Year
=cut

=begin comment
Code from PerlMonks,
https://www.perlmonks.org/?node_id=218778
Accessed Wednesday, November 27th, 2019
=cut

use strict;
use Quote;

# Create two phrase and author variable pairs to create two separate Quote
# objects
my $phrase_a = "Foo";
my $author_a = "Bar";

my $phrase_b = "Baz";
my $author_b = "Foo";

# Place each phrase and author pair into a different Quote object to create two
# distinct Quote objects
my $quote_a = Quote->new();
$quote_a->set_phrase($phrase_a);
$quote_a->set_author($author_a);

my $quote_b = Quote->new();
$quote_b->set_phrase($phrase_b);
$quote_b->set_author($author_b);

print STDOUT $quote_a->get_phrase(), "\n";
print STDOUT $quote_a->get_author(), "\n";
print STDOUT ($quote_a->is_approved() ? "Is approved" : "Is not approved"), "\n";

print STDOUT "\n";

print STDOUT $quote_b->get_phrase(), "\n";
print STDOUT $quote_b->get_author(), "\n";
print STDOUT ($quote_b->is_approved() ? "Is approved" : "Is not approved"), "\n";

exit 0;
