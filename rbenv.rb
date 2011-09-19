dep 'rbenv' do
  requires 'ruby-build'

  met? { in_path? 'rbenv' }
  meet {
    cd('~') {
      log_shell 'Cloning rbenv', "git clone https://github.com/sstephenson/rbenv.git .rbenv"
    }
  }
  after {
    log "NOTE: Please log out and back in again to enable rbenv"
  }
end

dep 'ruby-build', :template => 'src' do
  source "git://github.com/sstephenson/ruby-build.git"

  configure { true }
  build { true }
  install { shell "./install.sh" }
end

meta :rbenv do
  accepts_value_for :builds, :basename

  template {
    def version
      builds
    end

    def configure_opts
      yaml_location = shell('brew info libyaml').split("\n").collapse(/\s+\(\d+ files, \S+\)/)
      "--with-libyaml-dir='#{yaml_location}'"
    end

    requires 'rbenv', 'benhoskings:yaml headers.managed'

    met? {
      shell('rbenv versions')[/#{version}\b/]
    }

    meet {
      log_shell "ruby-build #{version}", "CONFIGURE_OPTS='#{configure_opts}' rbenv install #{version}"
    }

    after {
      log_shell 'rbenv rehash', 'rbenv rehash'
    }
  }

end

dep '1.9.2-p290.rbenv'
