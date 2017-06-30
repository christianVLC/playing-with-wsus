###
# Example WSUS Client with some options.
# This module insert in the Register of Windows the Keys for WSUS -> [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate]
#
# Arguments:
#  server_url: URL WSUS Server (This URL will be used for the Reporting of the Updates)
#  accept_trusted_publisher_certs: if false WSUS server only distributes Microsoft updates.
#  auto_install_minor_updates: Minor Updates are installed with silently modus
#  auto_update_option: 
#         'NotifyOnly': Notifies users before downloading updates.
#         'AutoNotify': Automatically downloads updates and notifies users.
#         'Scheduled': Automatically downloads updates and schedules automatic installation. 
#         'AutoInstall': Requires fully automatic updates that users can configure if allowed.
#  disable_windows_update_access: If true, no-Admins cant access Windows Updat
#  elevate_non_admins: If false, only members of the Administrators group can approve or refuse updates.
#  enable_status_server: If true, client status reporting is sended to WSUS Server (server_url)
#  no_auto_reboot_with_logged_on_users: If 'true', Windows will not restart the client after installing updates, even if a reboot is required to finish installing the update.


class { 'wsus_client':
  server_url                          => 'http://192.168.10.3:8530',
  accept_trusted_publisher_certs      => false,
  auto_install_minor_updates          => true,
  auto_update_option                  => 'AutoInstall',
  disable_windows_update_access       => true,
  elevate_non_admins                  => false,
  enable_status_server                => true,
  no_auto_reboot_with_logged_on_users => true,

}
