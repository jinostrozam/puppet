#modules/profile/manifests/base.pp
class profile::base {
  include ntp
  class { 'motd' :
    content => "This is host ${::fqdn}.\n\nRunning on ${::operatingsystem}\n\n",
}
