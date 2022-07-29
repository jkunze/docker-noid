# based on Debian; Noid.pm requires at least Perl 5.8.1
FROM perl:5.34.1

# Classic Noid 0.424; noid script will be in /usr/local/bin/
RUN cpanm Noid

# this prevents noid script from throwing an uninitialized value error
ENV PERL5LIB /usr/local/lib/perl

CMD [ "/bin/bash" ]
