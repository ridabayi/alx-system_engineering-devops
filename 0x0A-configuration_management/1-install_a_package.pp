# File: 1-install_a_package.pp
# Description: Puppet manifest to install Flask version 2.1.0 using pip3

# Ensure pip3 is installed (optional if already ensured elsewhere)
package { 'python3-pip':
  ensure => installed,
}

# Install Flask version 2.1.0 using pip3
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip'],
}
