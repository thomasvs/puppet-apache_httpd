# Class: apache_httpd::install
#
class apache_httpd::install (
  $ensure = 'installed',
  $ssl = false,
) {

  package { 'httpd': ensure => $ensure }

  if $ssl {
    include apache_httpd::ssl::install
  }
}
