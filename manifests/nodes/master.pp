node 'puppetmaster' {
  class { 'puppetdb':
    disable_ssl    => true,
    listen_address => 'localhost',
    listen_port    => 8080
  }
  class { 'puppetdb::master::config':
    puppetdb_server         => 'localhost',
    puppetdb_port           => 8081,
    # Manage all the things in the puppet master!
    manage_routes           => true,
    manage_storeconfigs     => true,
    manage_report_processor => true
  }
}
