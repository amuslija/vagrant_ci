include wget
include maven
include selenium

exec { "apt-update":
    command => "/usr/bin/apt-get update"
}->

class { "jenkins":
  config_hash => {
  	'HTTP_PORT' => { 'value' => '8082' }
  }
}