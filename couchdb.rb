src 'couchdb' do
  requires 'build-essential', 'help2man', 'libtool', 'autoconf', 'automake',
           'erlang-dev', 'erlang-nox', 'libicu-dev', 'libmozjs-dev', 'libcurl4-openssl-dev'
  source 'git://git.apache.org/couchdb.git'
  preconfigure do
    shell './bootstrap'
  end
  install do
    shell 'make install', :sudo => true
  end
end
