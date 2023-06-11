@test 'assert_output() partial matching' {
    run echo 'ERROR: no such file or directory'
    assert_output --partial 'SUCCESS'

    # On failure, the substring and the output are displayed.
    # -- output does not contain substring --
    # substring : SUCCESS
    # output    : ERROR: no such file or directory
    # --
}

# Note: The expression must be a simple command.
# Compound commands, such as `[[`, can be used only when executed with `run bash -c "commands"`
@test 'describe test for assert()' {
    command touch '/var/log/test.log'
    assert [ command touch '/var/log/test.log' ]

    # On failure, the failed expression is displayed.
    # -- assertion failed --
    # expression : [ -e '/var/log/test.log' ]
    # --
}

load someFile