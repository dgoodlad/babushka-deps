dep 'nvm' do
  requires 'wget'
  met? { "#{ENV['HOME']}/.nvm".p.exist? }
  meet { shell 'git clone git://github.com/creationix/nvm.git ~/.nvm' }
end

dep 'node', :template => 'managed'

dep 'npm' do
  requires 'node'

  met? { in_path? 'npm' }
  meet {
    log_shell 'Run npm install.sh', 'curl http://npmjs.org/install.sh | clean=no sh'
  }
end
