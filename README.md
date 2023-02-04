# OnePlus 9 Aux Cameras Enabler

Magisk module that unlocks all cameras for use by third party apps on the OnePlus 9.


## How It Works

Using a `post-fs-data.sh` script, the module copies the `/odm/etc/camera/CameraHWConfiguration.config` file to it's (the modules) directory and then uses `sed` to replace the line `SystemCamera = 0;  0;  1;  1;  1` with `SystemCamera = 0;  0;  0;  0;  1`. This un-sets all the cameras as system cameras, which means that third party apps can access and use them. It then sets the SELinux context of the edited copy of `CameraHWConfiguration.config` and `mount --bind`'s it to the original (necessary because Magisk doesn't support overriding files in the `odm` partition).


## How to install:

1. Download latest op9_aux_cam_enabler.zip from releases page: [https://github.com/sean6541/op9_aux_cam_enabler/releases](https://github.com/sean6541/op9_aux_cam_enabler/releases)
2. Go to Magisk Manager -> Modules and click on "Install from storage". Choose Downloads/op9_aux_cam_enabler.zip
3. Reboot


**Notice: This module will ONLY work on the OnePlus 9 (non-pro). It will not work on ANY other device. If you have a OnePlus 9 Pro, use this module instead: [https://github.com/sean6541/op9pro_aux_cam_enabler](https://github.com/sean6541/op9pro_aux_cam_enabler)**