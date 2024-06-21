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
) {
    include apache::install
}