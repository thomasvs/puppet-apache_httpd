# Class: apache_httpd::ssl::install
#
class apache_httpd::ssl::install (
  $ensure = 'installed',
) {
  package { 'mod_ssl':
    ensure => $ensure,
    notify => Service['httpd'],
  }
}
