echo "- Enable passwordless sudo"

sudo sed -i 's/ ALL$/ NOPASSWD:ALL/' /etc/sudoers
