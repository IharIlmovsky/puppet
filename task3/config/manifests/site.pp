
node default {
  include nginx
  class { ‘mysql::client’: }
}

class { '::mysql::server'
  
  root_password    => '123',
  override_options => { 'mysqld' => { 'max_connections' => '1024' } }
}
