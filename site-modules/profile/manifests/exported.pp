#
class profile::exported {

  @@host { $facts['networking']['fqdn']:
    ensure => 'present',
    host_aliases => [ $facts['networking']['hostname'] ],
    ip => $facts['networking']['ipaddress'],
    tag => 'exportedresource',
  }

  Host <<| tag == 'exportedresource' |>>
}
