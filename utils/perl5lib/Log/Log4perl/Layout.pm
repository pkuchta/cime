package Log::Log4perl::Layout;


use Log::Log4perl::Layout::SimpleLayout;
use Log::Log4perl::Layout::PatternLayout;
use Log::Log4perl::Layout::PatternLayout::Multiline;


####################################################
sub appender_name {
####################################################
    my ($self, $arg) = @_;

    if ($arg) {
        die "setting appender_name unimplemented until it makes sense";
    }
    return $self->{appender_name};
}


##################################################
sub define {
##################################################
    ;  #subclasses may implement
}


##################################################
sub render {
##################################################
    die "subclass must implement render";
}

1;

__END__

=encoding utf8

=head1 NAME

Log::Log4perl::Layout - Log4perl Layout Virtual Base Class

=head1 SYNOPSIS

    # Not to be used directly, see below

=head1 DESCRIPTION

C<Log::Log4perl::Layout> is a virtual base class for the two currently
implemented layout types

    Log::Log4perl::Layout::SimpleLayout
    Log::Log4perl::Layout::PatternLayout

Unless you're implementing a new layout class for Log4perl, you shouldn't
use this class directly, but rather refer to
L<Log::Log4perl::Layout::SimpleLayout> or
L<Log::Log4perl::Layout::PatternLayout>.

=head1 LICENSE

Copyright 2002-2013 by Mike Schilli E<lt>m@perlmeister.comE<gt>
and Kevin Goess E<lt>cpan@goess.orgE<gt>.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

Please contribute patches to the project on Github:

    http://github.com/mschilli/log4perl

Send bug reports or requests for enhancements to the authors via our

MAILING LIST (questions, bug reports, suggestions/patches):
log4perl-devel@lists.sourceforge.net

Authors (please contact them via the list above, not directly):
Mike Schilli <m@perlmeister.com>,
Kevin Goess <cpan@goess.org>

Contributors (in alphabetical order):
Ateeq Altaf, Cory Bennett, Jens Berthold, Jeremy Bopp, Hutton
Davidson, Chris R. Donnelly, Matisse Enzer, Hugh Esco, Anthony
Foiani, James FitzGibbon, Carl Franks, Dennis Gregorovic, Andy
Grundman, Paul Harrington, Alexander Hartmaier  David Hull,
Robert Jacobson, Jason Kohles, Jeff Macdonald, Markus Peter,
Brett Rann, Peter Rabbitson, Erik Selberg, Aaron Straup Cope,
Lars Thegler, David Viner, Mac Yang.

