File { backup => false }

node default {
  include nginx
  
}

node newnode {

#  class { 'java':
#    jdk   => true,
#    version = > 7,
#  }

  class { 'jboss':
     version => '5'
  }

  class { 'deploy-java-app': }
  
  class { 'java': 
    jdk => true
  }

  package { 'unzip': 
    ensure => installed
  }

  package { 'epel-release' :
    ensure => installed
  }
}
