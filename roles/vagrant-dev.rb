name "vagrant-dev"

override_attributes( 
    "java" => { 
        "install_flavor" => "oracle", 
        "jdk_version" => "7", 
        "oracle" => { 
            "accept_oracle_download_terms" => true 
        } 
    },
    "gradle" => {
        "version" => "2.3",
        "url" => "http://services.gradle.org/distributions/gradle-2.3-bin.zip",
        "checksum" => "010dd9f31849abc3d5644e282943b1c1c355f8e2635c5789833979ce590a3774"
    },
    "apt" => {
        "compiletime" => true
    },
    "vagrant" => {
        # "symlink_npm" => (RbConfig::CONFIG['host_os'] =~ /cygwin|mswin|mingw/) ? true : false
        "symlink_npm" => true
    }
)

run_list(
    "recipe[apt]",
    "recipe[build-essential]",
    "recipe[openssl]",
    "recipe[gradle]",
    "recipe[git]",
    "recipe[maven]",
    "recipe[docker]",
    "recipe[java]",
    "recipe[nodejs]",
    "recipe[custom_environment]"
    "recipe[zshell::default]"
)
