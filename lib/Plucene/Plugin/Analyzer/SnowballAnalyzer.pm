package Plucene::Plugin::Analyzer::SnowballAnalyzer;

use base 'Plucene::Analysis::Analyzer';
use 5.006;
use strict;
use warnings;
our $VERSION = '1.0';
use Plucene::Plugin::Analyzer::SnowballFilter;
use Plucene::Analysis::Standard::StandardTokenizer;

our $LANG = 'en';

=head1 NAME 

Plucene::Plugin::Analyzer::SnowballAnalyzer - Stemmed analyzer with Lingua::Stem::Snowball

=head1 DESCRIPTION

Filters StandardTokenizer with SnowballAnalyzer.

Change $Plucene::Plugin::Analysis::SnowballAnalyzer::LANG to the language of your choice.
(see Lingua::Stem::Snowball documentation for all available languages).

=cut

sub tokenstream {
	my $self = shift;
	return Plucene::Plugin::Analyzer::SnowballFilter->new({
 		input => Plucene::Analysis::Standard::StandardTokenizer->new(@_),
 	});
}

=head1 AUTHOR

Fabien POTENCIER, C<fabpot@cpan.org>

=head1 LICENSE

You may distribute this code under the same terms as Plucene himself.
