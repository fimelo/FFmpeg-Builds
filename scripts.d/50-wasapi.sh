#!/bin/bash

# WASAPI support for Windows - FULL DEBUG VERSION

echo "========================================" >&2
echo "DEBUG: 50-wasapi.sh is being sourced" >&2
echo "DEBUG: Current TARGET = '$TARGET'" >&2
echo "DEBUG: Current SELF = '$SELF'" >&2
echo "DEBUG: Current STAGENAME = '$STAGENAME'" >&2
echo "========================================" >&2

ffbuild_enabled() {
    echo "DEBUG: ffbuild_enabled() called" >&2
    echo "DEBUG: Checking if TARGET='$TARGET' matches 'win*'" >&2
    
    if [[ $TARGET == win* ]]; then
        echo "DEBUG: MATCH! Returning true (0)" >&2
        return 0
    else
        echo "DEBUG: NO MATCH! Returning false (1)" >&2
        return 1
    fi
}

ffbuild_dockerdl() {
    echo "DEBUG: ffbuild_dockerdl() called" >&2
    return 0
}

ffbuild_dockerstage() {
    echo "DEBUG: ffbuild_dockerstage() called" >&2
    return 0
}

ffbuild_dockerlayer() {
    echo "DEBUG: ffbuild_dockerlayer() called" >&2
    return 0
}

ffbuild_dockerfinal() {
    echo "DEBUG: ffbuild_dockerfinal() called" >&2
    return 0
}

ffbuild_dockerbuild() {
    echo "DEBUG: ffbuild_dockerbuild() called" >&2
    return 0
}

ffbuild_configure() {
    echo "========================================" >&2
    echo "DEBUG: ffbuild_configure() called!" >&2
    echo "DEBUG: Returning: --enable-wasapi" >&2
    echo "========================================" >&2
    echo --enable-wasapi
}

ffbuild_unconfigure() {
    echo "DEBUG: ffbuild_unconfigure() called" >&2
    echo --disable-wasapi
}

echo "DEBUG: 50-wasapi.sh sourcing complete" >&2

