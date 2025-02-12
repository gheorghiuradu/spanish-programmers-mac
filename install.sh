# the directory may not exist
sudo mkdir -p "/Library/Keyboard Layouts"

# removing the previous version
sudo rm -rf "/Library/Keyboard Layouts/Spanish - Programmers.bundle"

sudo cp -r "Spanish - Programmers.bundle" "/Library/Keyboard Layouts/"

# clear the OS intl caches
sudo find /System/Library/Caches -name "*IntlDataCache*" 2>/dev/null | sudo xargs rm -v
sudo find /var -name "*IntlDataCache*" 2>/dev/null | sudo xargs rm -v

# in case of update ...
echo "Please reboot to apply the changes"