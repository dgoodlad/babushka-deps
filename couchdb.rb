dep 'couchdb', :template => 'managed'

dep 'couchdb.src' do
  requires 'help2man', 'libtool', 'erlang', 'libicu', 'spidermonkey', 'libcurl-dev',
           'couchdb user'
  #source 'git://git.apache.org/couchdb.git'
  source 'http://apache.mirror.aussiehq.net.au/couchdb/0.11.0/apache-couchdb-0.11.0.tar.gz'
  #preconfigure do
  #  shell './bootstrap'
  #end
  after :on => :linux do
    # The couchdb user needs to be able to write to logs, pidfiles, and dbs
    sudo "chown couchdb /usr/local/var/log/couchdb"
    sudo "chown couchdb /usr/local/var/run/couchdb"
    sudo "chown couchdb /usr/local/var/lib/couchdb"
    # ... and the local config
    sudo "chown couchdb /usr/local/etc/couchdb/local.ini"
  end
end

dep 'couchdb startup script' do
  requires 'couchdb', 'couchdb user', 'rcconf'
  met? { shell("rcconf --list").val_for('couchdb') == 'on' }
  meet :on => :linux do
    sudo "ln -sf /usr/local/etc/init.d/couchdb /etc/init.d/couchdb"
    sudo "ln -sf /usr/local/etc/default/couchdb /etc/default/couchdb"
    sudo 'update-rc.d couchdb defaults'
  end
end

dep 'couchdb user' do
  setup {
    set :username, 'couchdb'
    set :home_dir_base, '/usr/local/var/run'
  }
  requires 'user exists'
end

dep 'couchdb running' do
  helper :couchdb_running? do
    shell "netstat -an | grep -E '^tcp.*[.:]5984 +.*LISTEN'"
  end

  requires 'couchdb startup script'
  met? {
    returning couchdb_running? do |result|
      log "There is #{result ? 'something' : 'nothing'} listening on #{result ? result.scan(/[0-9.*]+[.:]5984/).first : 'port 5984'}"
    end
  }
  meet :on => :linux do
    sudo '/etc/init.d/couchdb start'
  end
end

