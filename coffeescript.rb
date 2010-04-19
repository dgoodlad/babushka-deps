src 'coffeescript' do
  requires 'nodejs'
  source 'git://github.com/jashkenas/coffee-script.git'
  provides 'coffee'

  configure { true }
  build { shell "bin/cake build" }
  install { shell "bin/cake install" }
end
