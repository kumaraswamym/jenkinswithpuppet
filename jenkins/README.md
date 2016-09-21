# puppet-jenkins

The Jenkins puppet module defines the `jenkins::plugin` resource which
will download and install the plugin "[by
hand](https://wiki.jenkins-ci.org/display/JENKINS/Plugins#Plugins-Byhand)"

The names of the plugins can be found on the [update
site](http://updates.jenkins-ci.org/download/plugins)

jenkins module will do installatin of jenkins

class jenkins::deleteplugin will do deletion of plugins

#### Latest

By default, the resource will install the latest plugin, i.e.:

    jenkins::plugin {
      "deploy" : ;
    }

If you specify `version => 'latest'` in current releases of the module, the
plugin will be downloaded and installed with *every* run of Puppet. This is a
known issue and will be addressed in future releases. For now it is recommended
that you pin plugin versions when using the `jenkins::plugin` type.

#### By version
If you need to peg a specific version, simply specify that as a string, i.e.:

    jenkins::plugin {
      "deploy" :
        version => "1.10";
    }


### Dependencies

The dependencies for this module currently are:

* [stdlib module](http://forge.puppetlabs.com/puppetlabs/stdlib)
* [apt module](http://forge.puppetlabs.com/puppetlabs/apt) (for Debian/Ubuntu users)
* [java module](http://github.com/puppetlabs/puppetlabs-java)
* [zypprepo](https://forge.puppetlabs.com/darin/zypprepo) (for Suse users)

