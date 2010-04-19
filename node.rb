src 'nodejs' do
  source 'git://github.com/ry/node.git'
  provides 'node', 'node-repl', 'node-waf'
end
