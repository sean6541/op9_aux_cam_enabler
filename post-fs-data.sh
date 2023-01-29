TMPFILE="${0%/*}/overridden_at_boot_DO_NOT_EDIT"

if [[ -f "$TMPFILE" ]]; then rm "$TMPFILE"; fi
cp /odm/etc/camera/CameraHWConfiguration.config "$TMPFILE" || exit 1
sed -i -r 's/SystemCamera *= *[01]; *[01].*/SystemCamera = 0;  0;  0;  0;  1/g' "$TMPFILE" || exit 1
mount --bind "$TMPFILE" /odm/etc/camera/CameraHWConfiguration.config || exit 1
chcon u:object_r:vendor_configs_file:s0 /odm/etc/camera/CameraHWConfiguration.config