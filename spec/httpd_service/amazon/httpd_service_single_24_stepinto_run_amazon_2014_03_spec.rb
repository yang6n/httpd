require 'spec_helper'

describe 'httpd_service::single on amazon-2014.03' do
  let(:httpd_service_single_24_stepinto_run_amazon_2014_03) do
    ChefSpec::Runner.new(
      :step_into => 'httpd_service',
      :platform => 'amazon',
      :version => '2014.03'
      ) do |node|
      node.set['httpd']['version'] = '2.4'
    end.converge('httpd_service::single')
  end

  context 'when using default parameters' do
    it 'creates httpd_service[default]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to create_httpd_service('default').with(
        :parsed_contact => 'webmaster@localhost',
        :parsed_hostname_lookups => 'off',
        :parsed_keepalive => true,
        :parsed_keepaliverequests => '100',
        :parsed_keepalivetimeout => '5',
        :parsed_listen_addresses => ['0.0.0.0'],
        :parsed_listen_ports => %w(80 443),
        :parsed_log_level => 'warn',
        :parsed_package_name => 'httpd24',
        :parsed_run_user => 'apache',
        :parsed_run_group => 'apache',
        :parsed_timeout => '400',
        :parsed_version => '2.4',
        :parsed_mpm => 'event',
        :parsed_startservers => '2',
        :parsed_minspareservers => nil,
        :parsed_maxspareservers => nil,
        :parsed_maxclients => nil,
        :parsed_maxrequestsperchild => nil,
        :parsed_minsparethreads => '25',
        :parsed_maxsparethreads => '75',
        :parsed_threadlimit => '64',
        :parsed_threadsperchild => '25',
        :parsed_maxrequestworkers => '150',
        :parsed_maxconnectionsperchild => '0'
        )
    end
  end

  context 'when stepping into httpd_service' do
    it 'installs package[httpd24]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to install_package('default create httpd24').with(
        :package_name => 'httpd24'
        )
    end

    it 'deletes file[/etc/httpd/conf.d/autoindex.conf]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to_not delete_file('default create /etc/httpd/conf.d/autoindex.conf').with(
        :path => '/etc/httpd/conf.d/autoindex.conf'
        )
    end

    it 'deletes file[/etc/httpd/conf.d/README]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to_not delete_file('default create /etc/httpd/conf.d/README').with(
        :path => '/etc/httpd/conf.d/README'
        )
    end

    it 'deletes file[/etc/httpd/conf.d/userdir.conf]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to_not delete_file('default create /etc/httpd/conf.d/userdir.conf').with(
        :path => '/etc/httpd/conf.d/userdir.conf'
        )
    end

    it 'deletes file[/etc/httpd/conf.d/welcome.conf]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to_not delete_file('default create /etc/httpd/conf.d/welcome.conf').with(
        :path => '/etc/httpd/conf.d/welcome.conf'
        )
    end

    it 'deletes file[default create /etc/httpd/conf.modules.d/00-base.conf]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to_not delete_file('default create /etc/httpd/conf.modules.d/00-base.conf').with(
        :path => '/etc/httpd/conf.modules.d/00-base.conf'
        )
    end

    it 'deletes file[default create /etc/httpd/conf.modules.d/00-dav.conf]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to_not delete_file('default create /etc/httpd/conf.modules.d/00-dav.conf').with(
        :path => '/etc/httpd/conf.modules.d/00-dav.conf'
        )
    end

    it 'deletes file[default create /etc/httpd/conf.modules.d/00-lua.conf]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to_not delete_file('default create /etc/httpd/conf.modules.d/00-lua.conf').with(
        :path => '/etc/httpd/conf.modules.d/00-lua.conf'
        )
    end

    it 'deletes file[default create /etc/httpd/conf.modules.d/00-mpm.conf]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to_not delete_file('default create /etc/httpd/conf.modules.d/00-mpm.conf').with(
        :path => '/etc/httpd/conf.modules.d/00-mpm.conf'
        )
    end

    it 'deletes file[default create /etc/httpd/conf.modules.d/00-proxy.conf]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to_not delete_file('default create /etc/httpd/conf.modules.d/00-proxy.conf').with(
        :path => '/etc/httpd/conf.modules.d/00-proxy.conf'
        )
    end

    it 'deletes file[default create /etc/httpd/conf.d/notrace.conf]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to_not delete_file('default create /etc/httpd/conf.d/notrace.conf').with(
        :path => '/etc/httpd/conf.d/notrace.conf'
        )
    end

    it 'deletes file[default create /etc/httpd/conf.modules.d/00-systemd.conf]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to_not delete_file('default create /etc/httpd/conf.modules.d/00-systemd.conf').with(
        :path => '/etc/httpd/conf.modules.d/00-systemd.conf'
        )
    end

    it 'deletes file[default create /etc/httpd/conf.modules.d/01-cgi.conf]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to_not delete_file('default create /etc/httpd/conf.modules.d/01-cgi.conf').with(
        :path => '/etc/httpd/conf.modules.d/01-cgi.conf'
        )
    end

    it 'installs package[net-tools]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to install_package('default create net-tools').with(
        :package_name => 'net-tools'
        )
    end

    it 'creates httpd_module[default create log_config]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to create_httpd_module('default create log_config').with(
        :module_name => 'log_config'
        )
    end

    it 'creates httpd_module[default create logio]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to create_httpd_module('default create logio').with(
        :module_name => 'logio'
        )
    end

    it 'installs httpd_module[default create unixd]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to create_httpd_module('default create unixd').with(
        :module_name => 'unixd',
        :httpd_version => '2.4',
        :instance => 'default'
        )
    end

    it 'installs httpd_module[default create version]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to create_httpd_module('default create version').with(
        :module_name => 'version',
        :httpd_version => '2.4',
        :instance => 'default'
        )
    end

    it 'installs httpd_module[default create watchdog]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to create_httpd_module('default create watchdog').with(
        :module_name => 'watchdog',
        :httpd_version => '2.4',
        :instance => 'default'
        )
    end

    it 'installs httpd_module[default create mpm_event]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to create_httpd_module('default create mpm_event').with(
        :module_name => 'mpm_event',
        :httpd_version => '2.4',
        :instance => 'default'
        )
    end

    it 'creates link[default create /usr/sbin/httpd]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to_not create_link('default create /usr/sbin/httpd').with(
        :target_file => '/usr/sbin/httpd',
        :to => '/usr/sbin/httpd'
        )
    end

    it 'creates link[default create /usr/sbin/httpd.worker]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to_not create_link('default create /usr/sbin/httpd.worker').with(
        :target_file => '/usr/sbin/httpd.worker',
        :to => '/usr/sbin/httpd.worker'
        )
    end

    it 'creates link[default create /usr/sbin/httpd.event]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to_not create_link('default create /usr/sbin/httpd.event').with(
        :target_file => '/usr/sbin/httpd.event',
        :to => '/usr/sbin/httpd.event'
        )
    end

    it 'creates httpd_config[default create mpm_event]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to create_httpd_config('default create mpm_event').with(
        :config_name => 'mpm_event',
        :instance => 'default',
        :source => 'mpm.conf.erb',
        :cookbook => 'httpd'
        )
    end

    it 'creates directory[default create /etc/httpd]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to create_directory('default create /etc/httpd').with(
        :path => '/etc/httpd',
        :user => 'root',
        :group => 'root',
        :mode => '0755',
        :recursive => true
        )
    end

    it 'creates directory[default create /etc/httpd/conf]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to create_directory('default create /etc/httpd/conf').with(
        :path => '/etc/httpd/conf',
        :user => 'root',
        :group => 'root',
        :mode => '0755',
        :recursive => true
        )
    end

    it 'creates directory[default create /etc/httpd/conf.d]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to create_directory('default create /etc/httpd/conf.d').with(
        :path => '/etc/httpd/conf.d',
        :user => 'root',
        :group => 'root',
        :mode => '0755',
        :recursive => true
        )
    end

    it 'creates directory[default create /etc/httpd/conf.modules.d]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to create_directory('default create /etc/httpd/conf.modules.d').with(
        :path => '/etc/httpd/conf.modules.d',
        :user => 'root',
        :group => 'root',
        :mode => '0755',
        :recursive => true
        )
    end

    it 'creates directory[default create /usr/lib64/httpd/modules]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to create_directory('default create /usr/lib64/httpd/modules').with(
        :path => '/usr/lib64/httpd/modules',
        :user => 'root',
        :group => 'root',
        :mode => '0755',
        :recursive => true
        )
    end

    it 'creates directory[default create /var/log/httpd]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to create_directory('default create /var/log/httpd').with(
        :path => '/var/log/httpd',
        :user => 'root',
        :group => 'root',
        :mode => '0755',
        :recursive => true
        )
    end

    it 'creates link[default create /etc/httpd/logs]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to create_link('default create /etc/httpd/logs').with(
        :target_file => '/etc/httpd/logs',
        :to => '../../var/log/httpd'
        )
    end

    it 'creates link[default create /etc/httpd/modules]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to create_link('default create /etc/httpd/modules').with(
        :target_file => '/etc/httpd/modules',
        :to => '../../usr/lib64/httpd/modules'
        )
    end

    it 'creates directory[default create /var/run/httpd]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to create_directory('default create /var/run/httpd').with(
        :path => '/var/run/httpd',
        :user => 'root',
        :group => 'root',
        :mode => '0755',
        :recursive => true
        )
    end

    it 'creates link[default create /etc/httpd/run]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to create_link('default create /etc/httpd/run').with(
        :target_file => '/etc/httpd/run',
        :to => '../../var/run/httpd'
        )
    end

    it 'creates template[default create /etc/httpd/conf/magic]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to create_template('default create /etc/httpd/conf/magic').with(
        :path => '/etc/httpd/conf/magic',
        :source => 'magic.erb',
        :owner => 'root',
        :group => 'root',
        :mode => '0644',
        :cookbook => 'httpd'
        )
    end

    it 'creates template[default create /etc/httpd/conf/httpd.conf]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to create_template('default create /etc/httpd/conf/httpd.conf').with(
        :path => '/etc/httpd/conf/httpd.conf',
        :source => 'httpd.conf.erb',
        :owner => 'root',
        :group => 'root',
        :mode => '0644',
        :cookbook => 'httpd'
        )
    end

    it 'creates template[default create /etc/rc.d/init.d/httpd]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to create_template('default create /etc/init.d/httpd').with(
        :path => '/etc/init.d/httpd',
        :source => '2.4/sysvinit/el-6/httpd.erb',
        :owner => 'root',
        :group => 'root',
        :mode => '0755',
        :cookbook => 'httpd'
        )
    end

    it 'creates template[default create /etc/sysconfig/httpd]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to create_template('default create /etc/sysconfig/httpd').with(
        :path => '/etc/sysconfig/httpd',
        :source => 'rhel/sysconfig/httpd-2.4.erb',
        :owner => 'root',
        :group => 'root',
        :mode => '0644',
        :cookbook => 'httpd'
        )
    end

    it 'manage service[default create httpd]' do
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to start_service('default create httpd').with(
        :provider => Chef::Provider::Service::Init::Redhat
        )
      expect(httpd_service_single_24_stepinto_run_amazon_2014_03).to enable_service('default create httpd').with(
        :provider => Chef::Provider::Service::Init::Redhat
        )
    end
  end
end
