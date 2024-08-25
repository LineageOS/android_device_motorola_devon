#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

function vendor_imports() {
    cat << EOF >> "$1"
		"vendor/qcom/opensource/display",
EOF
}

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=devon
export DEVICE_COMMON=sm6225-common
export VENDOR=motorola

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
