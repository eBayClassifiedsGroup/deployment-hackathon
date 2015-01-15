exec { "apt-get update": 
    path    => ["/usr/bin", "/usr/sbin"]
}

package { "mesosphere":
    ensure => "installed"
}

package { "mesos":
    ensure => "installed"
}
