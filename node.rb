dep 'nodejs.src' do
  source 'http://nodejs.org/dist/node-v0.2.5.tar.gz'
  provides 'node', 'node-repl', 'node-waf'
end

dep 'nvm' do
  requires 'wget'
  met? { "#{ENV['HOME']}/.nvm".p.exist? }
  meet { shell 'git clone git://github.com/creationix/nvm.git ~/.nvm' }
end
