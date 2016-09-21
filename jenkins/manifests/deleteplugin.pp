class jenkins::deleteplugin { 
  $plugin            = "${pluginname}.hpi"
  $plugin_dir        = '/var/lib/jenkins/plugins'
  $plugin_parent_dir = '/var/lib/jenkins'

    exec {"delete":
        command => "rm -rf ${pluginname} ${pluginname}.* ",
        cwd        => $plugin_dir,
        path       => ['/usr/bin', '/usr/sbin', '/bin'],
        notify  => Service['jenkins'],
    }
    notify { "Deleted plugin ${pluginname}" : }

}
