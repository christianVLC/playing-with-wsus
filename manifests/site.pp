####
# Example of site.pp with multiple OS
####

case $::operatingsystem {
  'ubuntu', 'debian': {
         # include some standard classes, profiles
  }
  'RedHat', 'CentOS': {
         # include some standard classes, profiles
  }
  'windows': {
#  include some_basic_module (maybe some software or Register Keys....)
  include wsus_client
  }
  default {}

case $::hostname {
  #
  #Some cases more...
  #
  #
}
