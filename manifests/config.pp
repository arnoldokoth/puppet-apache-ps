# @summary Manages any Apache configurations
class apache::config {
    file { 'apache_config':
        ensure => $apache::config_ensure,
        path   => $apache::config_path,
        source => "puppet:///modules/apache/${facts['os']['family']}.conf",
        mode   => '0644',
        owner  => 'root',
        group  => 'root',
    }
}
