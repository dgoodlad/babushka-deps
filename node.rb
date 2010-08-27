dep 'nodejs.src' do
  source 'git://github.com/ry/node.git'
  provides 'node', 'node-repl', 'node-waf'
end

dep 'nvm' do
  requires 'wget'
  met? { "#{ENV['HOME']}/.nvm".p.exist? }
  meet { shell 'git clone git://github.com/creationix/nvm.git ~/.nvm' }
end
