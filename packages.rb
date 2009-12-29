pkg 'automake', :for => :linux
pkg 'erlang-dev', :for => :linux do
  provides 'erlc'
end
pkg 'erlang-nox', :for => :linux do
  provides 'erl'
end
pkg 'libicu-dev', :for => :linux do
  provides []
end
pkg 'help2man', :for => :linux
pkg 'libtool', :for => :linux
pkg 'libmozjs-dev', :for => :linux do
  provides []
end
pkg 'libcurl4-openssl-dev', :for => :linux do
  provides []
end

