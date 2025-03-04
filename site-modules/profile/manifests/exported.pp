#
class profile::exported {

  @@host { $facts['networking']['fqdn']:
    ensure => 'present',
    host_aliases => [ $facts['networking']['hostname'] ],
    ip => $facts['networking']['ip'],
    tag => [ 'exportedresource', 'hostresource' ],
  }

  Host <<| tag == 'exportedresource' |>>
}
