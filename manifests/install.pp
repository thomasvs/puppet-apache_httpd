# Class: apache_httpd::install
#
class apache_httpd::install (
  $ensure = 'installed',
  $ssl = false,
) {

  package { 'httpd': ensure => $ensure }

  if $ssl {
    package { 'mod_ssl':
      ensure => $ensure,
      notify => Service['httpd'],
    }
  }
}
