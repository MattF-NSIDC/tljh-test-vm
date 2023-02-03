# Load modules and classes
lookup('classes', {merge => unique}).include

$project = hiera('project')

unless $::environment == 'ci' {
  #
  # # Install and configure docker
  # class {'docker':
  #   version      => '5:20.10.14~3-0~ubuntu-focal',
  #   docker_users => ['vagrant']
  # }

  # class {'docker::compose':
  #   ensure => present,
  #   version => '1.29.2',
  # }

  exec {'install TLJH':
    command => '/vagrant/bootstrap-tljh.sh',
    user    => 'vagrant',
  } ->
  exec {'install jupyter extensions':
    command => '/vagrant/install-jupyter-extensions.sh',
    user    => 'vagrant',
  }

}
