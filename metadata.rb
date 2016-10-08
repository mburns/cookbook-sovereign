# encoding: UTF-8
# -*- mode: ruby -*-
# vi: set ft=ruby :

name 'paramount'
maintainer 'Michael Burns'
maintainer_email 'michael@mirwin.net'
license 'Apache 2.0'
description 'Installs/Configures a complete online software stack'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))

version begin
  IO.read(File.join(File.dirname(__FILE__), 'VERSION'))
rescue
  '0.2.0'
end

source_url 'https://github.com/mburns/cookbook-paramount' if respond_to?(:source_url)
issues_url 'https://github.com/mburns/cookbook-paramount/issues' if respond_to?(:issues_url)

supports 'debian'
supports 'ubuntu'

recipe 'paramount::default', 'Includes Security and System configuration'
recipe 'paramount::_security', 'Hardens your host system'
recipe 'paramount::_system', 'Configures basic system requirements'
recipe 'paramount::_email', 'Builds a full email stack (SMTP, IMAP, POP)'
recipe 'paramount::_cloud', 'Various cloud-based tools'
recipe 'paramount::_web', 'Builds a web host'

# depends 'aide'
depends 'automatic_updates'
depends 'apt'
depends 'ark'
depends 'build-essential'
depends 'chef-sugar'
# depends 'chef-vault'
depends 'clamav'
# depends 'couchpotato'
depends 'database'
depends 'djbdns'
# depends 'dovecot'
# depends 'dspam'
# depends 'encfs'
depends 'fail2ban'
depends 'firewall'
depends 'hostsfile'
depends 'java'
# depends 'ldap'
depends 'locales'
depends 'mosh'
depends 'chef_nginx'
depends 'ntp'
depends 'ohai'
depends 'opendkim'
# depends 'openldap'
depends 'openssh'
depends 'openssl'
# depends 'owncloud'
depends 'packages'
depends 'php-fpm'
depends 'plexapp'
depends 'postfix-full'
# depends 'postfixadmin'
# depends 'prosody'
depends 'rkhunter'
# depends 'roundcube'
depends 'rsyslog'
depends 'runit'
# depends 'sabnzbd'
# depends 'sickbeard'
depends 'onddo-spamassassin'
depends 'ssl_certificate'
depends 'sudo'
# depends 'sysctl'
depends 'ubuntu'
depends 'users'
# depends 'yum'
# depends 'yum-epel'
