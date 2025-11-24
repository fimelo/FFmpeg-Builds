#!/bin/bash

# WASAPI is a Windows Audio Session API for low-latency audio capture/playback
# It's built into Windows (Vista and later), no external dependencies needed

SCRIPT_SKIP="1"

ffbuild_enabled() {
    [[ $TARGET == win* ]]
}

ffbuild_dockerdl() {
    true
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

