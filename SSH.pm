package Bundle::SSH;

$VERSION = "1.00";

1;

__END__

=head1 NAME

Bundle::SSH - A bundle to install modules to use SSH from Perl 

=head1 SYNOPSIS

 First you have to download and expand the PARI itself.
 See INSTALL PARI below. 
 Then:

 perl -MCPAN -e 'force install Bundle::SSH'


=head1 DESCRIPTION

This bundle defines the modules you need to use SSH from Perl.
Thre are two ways to do this. One is using Net::SSH which is a wrapper
around the ssh command installed (or not) on your computer. It is simple
to install and use but it depends on external executabel and has other
drawbacks too. I have included it in this bundle.

The other way which is more involved both in terms of installation and in
the way you use it is called Net::SSH::Perl . It is a Perl/C implementation
of the SSH protocol. 

This module should list all the required modules (and maybe more) to use
either of the above way to ssh to another machine. It is organized in a way
so it will be able to install everything without the need to install 
prerequsite modules.

=head1 INSTALL PARI

anonymous ftp from:
megrez.math.u-bordeaux.fr
/pub/pari/unix/
pari-2.1.4.tgz
maybe pari.tgz always points to the latest ?


in short wget  ftp://megrez.math.u-bordeaux.fr/pub/pari/unix/pari-2.1.4.tgz
in the parent directory where the CPAN modules will be built.
It is ususally ~/.cpan/build

tar xzf pari-2.1.4.tgz
cd pari-2.1.4
./Configure
(nothing more is needed, see the INSTALL file in Math-Pari)

=head1 CONTENTS

Net::SSH - independent wrapper around the ssh command

Math::Pari - interface to PARI, testing gave me errors, need force

Class::Loader

Crypt::Random - errors, needed force

Digest::SHA1

Digest::HMAC

Digest::BubbleBabble - it seems that there are very few tests

Digest::MD2

Convert::ASN1

Crypt::Rijndael

Crypt::CBC

Crypt::DES

Crypt::DES_EDE3

Convert::PEM

Data::Buffer

Crypt::DSA

Crypt::DH

String::CRC32

Math::GMP

Compress::Zlib - I think this also needed force but I am not sure

Convert::ASCII::Armour

Crypt::Blowfish

Crypt::Primes - needs force

Sort::Versions

Tie::EncryptedHash

Crypt::RSA - needs force

Net::SSH::Perl - asks, intimate questions, my answereses are [3] and [2]

=head1 OTHER

Term::Gnuplot - needed but not required by Math::Pari , needs manual configuration
    on my machine so I have not installed it yet and have not included here.

Crypt::IDEA - could not install as make broke


=head1 QUALITY ASSURANCE

The module owners should be contacted if something does not work with
their module.


=head1 REFERENCES

hmm, nothing here.


=head1 AUTHOR

Gabor Szabo <lt>gabor@perl.org.il</lt>

=head1 COPYRIGHT

Copyright 2002 by Gabor Szabo E<lt>gabor@pti.co.ilE<gt>.

This program is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

See F<http://www.perl.com/perl/misc/Artistic.html>



=cut 
