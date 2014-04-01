node 'puppetmaster' {
  class { 'puppet::master': }

  $puppetdb_host = 'localhost'
  $puppetdb_port = 8080

  class { 'puppetdb':
    disable_ssl    => true,
    listen_address => $puppetdb_host,
    listen_port    => $puppetdb_port
  }
  class { 'puppetdb::master::config':
    puppetdb_server         => $puppetdb_host,
    puppetdb_port           => $puppetdb_port,
    # Manage all the things in the puppet master!
    manage_routes           => true,
    manage_storeconfigs     => true,
    manage_report_processor => true,
    enable_reports          => true
  }
}
