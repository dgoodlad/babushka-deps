dep 'mysql', :template => 'managed'

dep 'mysql configured' do
  requires 'mysql'
  helper(:my_cnf) { '/etc/my.cnf' }
  met? { my_cnf.p.exists?  }
  meet {
    render_erb 'mysql/my.cnf', :to => my_cnf, :sudo => true
    shell 'mysql_install_db'
  }
end

dep 'mysql starts via launchd' do
  requires 'mysql configured'

  helper(:launch_agents) {
    '~/Library/LaunchAgents'
  }
  helper(:brew_path) {
    Babushka::BrewHelper.brew_path_for('mysql')
  }
  helper(:plist) {
    'com.mysql.mysqld.plist'
  }

  met? {
    !shell('launchctl list')[/com\.mysql\.mysqld/].nil?
  }
  meet {
    shell "cp #{brew_path}/#{plist} #{launch_agents}"
    shell "launchctl load -w #{launch_agents}/#{plist}"
  }
end
