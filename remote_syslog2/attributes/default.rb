# Overwrite this in your cookbook
default['remote_syslog2']['config'] = {
  files: ["/srv/www/verecho/shared/log/production.log","/srv/www/verecho/shared/log/staging.log", "/srv/www/verecho/shared/log/unicorn.stdout.log", "/srv/www/verecho/shared/log/unicorn.stderr.log", "/var/log/nginx/app.verecho.com.access.log", "/var/log/nginx/app.verecho.com.error.log","/var/log/messages"],
  exclude_files: [],
  exclude_patterns: [],
  hostname: node['hostname'],
  destination: {
    host: node['papertrail']['host'],
    port: node['papertrail']['port'],
    protocol: 'tls'
  }
}

# These attributes probably shouldn't be changed unless they specifically need to be
default['remote_syslog2']['config_file'] = '/etc/remote_syslog2.yml'
default['remote_syslog2']['pid_dir'] = '/var/run'
default['remote_syslog2']['install']['download_file'] = 'https://github.com/papertrail/remote_syslog2/releases/download/v0.17/remote_syslog_linux_i386.tar.gz'
default['remote_syslog2']['install']['download_path'] = '/tmp/remote_syslog.tar.gz'
default['remote_syslog2']['install']['extract_path'] = '/tmp'
default['remote_syslog2']['install']['extracted_path'] = '/tmp/remote_syslog'
default['remote_syslog2']['install']['extracted_bin'] = 'remote_syslog'
default['remote_syslog2']['install']['bin_path'] = '/usr/local/bin'
default['remote_syslog2']['install']['bin'] = 'remote_syslog2'
