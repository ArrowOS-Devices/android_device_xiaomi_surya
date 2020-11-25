#!/sbin/sh
#
# Copyright (C) 2020 The ArrowOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE=`getprop ro.boot.hwname`

# mount system as r/w
mount -t ext4 /dev/block/platform/soc/1d84000.ufshc/by-name/system /system_root -o rw,discard

if [ $DEVICE == "karna" ]; then
    # Nuke NFC
    rm -rf /system_root/system/app/*Nfc*
    rm -rf /system_root/system/etc/permissions/*nfc*
    rm -rf /system_root/system/framework/*nfc*
    rm -rf /system_root/system/lib/*nfc*
    rm -rf /system_root/system/lib64/*nfc*
    rm -rf /system_root/system/priv-app/Tag
fi

# unmount system
umount /system_root
