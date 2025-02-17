# @summary Manage SOGo
#
# @param language Default language used in the Web interface
# @param time_zone Default time zone for users
# @param login_module Module to show after login
# @param password_change_enabled Allow or not users to change their passwords from SOGo
# @param user_sources LDAP and/or SQL sources used for authentication and global address books
# @param mail_source Mail server configuration
# @param profile_url Database URL so that SOGo can retrieve user profiles
# @param folder_info_url Database URL so that SOGo can retrieve the location of user folders
# @param sessions_folder_url Database URL so that SOGo can store and retrieve secured user sessions information
# @param configuration_file Path to SOGo configuration file
# @param package Package name
# @param service Ensure parameter for the SOGo package
class sogo (
  String[1]               $configuration_file,
  String[1]               $package,
  String[1]               $service,
  String[1]               $language = 'English',
  String[1]               $time_zone = 'America/Montreal',
  String[1]               $login_module = 'Calendar',
  Boolean                 $password_change_enabled = false,
  Array[Sogo::Usersource] $user_sources = [],
  Hash                    $extra_config = {},
  String[1]               $profile_url = 'postgresql://sogo:sogo@localhost:5432/sogo/sogo_user_profile',
  String[1]               $folder_info_url = 'postgresql://sogo:sogo@localhost:5432/sogo/sogo_folder_info',
  String[1]               $sessions_folder_url = 'postgresql://sogo:sogo@localhost:5432/sogo/sogo_sessions_folder',
) {
  contain sogo::package
  contain sogo::config
  contain sogo::service

  Class['sogo::package']
  -> Class['sogo::config']
  ~> Class['sogo::service']
}
