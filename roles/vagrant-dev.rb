name "vagrant-dev"

run_list(
    "recipe[apt]",
    "recipe[openssl]",
    "recipe[gradle]",
    "recipe[git]",
    "recipe[maven]"
)