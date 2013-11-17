# Encoding: utf-8
name              'yum'
maintainer        'Opscode, Inc.'
maintainer_email  'cookbooks@opscode.com'
license           'Apache 2.0'
description       'Configures various yum components on Red Hat-like systems'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '2.4.3'
recipe            'yum', 'Empty recipe.'
recipe            'yum::yum', 'Manages yum configuration'

%w{ redhat centos scientific amazon }.each do |os|
  supports os, '>= 5.0'
end

