class apache::params {
    $install_ensure = 'present'
    case $facts['os']['family'] {
        'RedHat': {
            $install_name = 'httpd'
        }
        'Debian': {
            $install_name = 'apache2'
        }
    }
}