#! /bin/bash -ex

# to run
# ./debug_options_stop_error.sh

# option "e" stop on error and "x" to debug using expansions and substitutions

stopOnFirstErrorDebug() {

    ls
    ls /notexistsfolder # must stop here and not executes the follow script
    ls /opt # never will be execute because the command above will return error
}

stopOnFirstErrorDebug

