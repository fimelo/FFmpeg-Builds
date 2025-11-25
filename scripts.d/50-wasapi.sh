#!/bin/bash

# WASAPI support for Windows

ffbuild_enabled() {
    [[ $TARGET == win* ]]
}

ffbuild_dockerdl() {
    return 0
}

ffbuild_dockerstage() {
    return 0
}

ffbuild_dockerlayer() {
    return 0
}

ffbuild_dockerfinal() {
    return 0
}

ffbuild_dockerbuild() {
    return 0
}

ffbuild_configure() {
    echo --enable-wasapi
}

ffbuild_unconfigure() {
    echo --disable-wasapi
}

