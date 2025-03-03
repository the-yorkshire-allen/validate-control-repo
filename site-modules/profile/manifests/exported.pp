#
class profile::exported {

  @@host { $facts['fqdn']:
    ensure => 'present',
    host_aliases => [ $facts['hostname'] ],
    ip => $facts['ipaddress'],
    tag => 'exportedresource',
  }

  Host <<| tag == 'exportedresource' |>>
}
