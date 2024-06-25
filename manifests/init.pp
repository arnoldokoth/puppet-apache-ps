# @summary
#        Installs the base apache package
#
# Install and configures apache
#
# @example
#   include apache
class apache (
    String $install_ensure,
    String $install_name,
    String $config_ensure,
    String $config_path,
    Enum["running", "stopped"] $service_ensure,
    String $service_name,
    Boolean $service_enable,
    String $vhosts_dir,
    String $vhosts_owner,
    String $vhosts_group,
) { 
    contain apache::install
    contain apache::config
    contain apache::service

    Class['::apache::install']
    -> Class['::apache::config']
    ~> Class['::apache::service']
}