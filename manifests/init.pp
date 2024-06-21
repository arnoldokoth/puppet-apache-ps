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
) {
    contain apache::install
    contain apache::config
    contain apache::service

    Class['::apache::install']
    -> Class['::apache::config']
    ~> Class['::apache::service']
}