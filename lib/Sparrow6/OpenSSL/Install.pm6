use v6;

unit module Sparrow6::OpenSSL::Install;

use Sparrow6::DSL;

our sub tasks (%args) {

  # --------------------------- Install openssl related packages ------------------------ #
  
  say "Install openssl related packages";
  
  package-install %(
    alpine => qqw{make libressl-dev},
    centos => qqw{openssl openssl-devel},
    debian => qqw{make libssl-dev},
  );

  return;
}
