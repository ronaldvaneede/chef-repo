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
        "version" => "2.3"
    }
)

run_list(
    "recipe[apt]",
    "recipe[openssl]",
    "recipe[gradle]",
    "recipe[git]",
    "recipe[maven]",
    "recipe[docker]",
    "recipe[java]",
    "recipe[zshell::default]"
)