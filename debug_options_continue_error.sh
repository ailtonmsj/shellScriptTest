#! /bin/bash -x

# to run
# ./debug_options_continue_error.sh

# option "x" to debug using expansions and substitutions

lsErrorDebug() {

    ls
    ls /notexistsfolder # this must return error, but the script must continues
    ls /opt 
}

lsErrorDebug

