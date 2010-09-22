dep 'libicu' do
  requires {
    on :osx, 'libicu.src'
    on :linux, 'libicu-dev'
  }
end

dep 'libicu-dev', :template => 'managed' do
  installs { via :apt, 'libicu-dev' }
  provides []
end

dep 'libicu.src' do
  # TODO fill this in!
end

dep 'help2man', :template => 'managed'

dep 'libcurl-dev', :template => 'managed' do
  installs {
    via :apt, 'libcurl4-openssl-dev'
  }
  provides []
end

dep 'spidermonkey' do
  requires {
    on :linux, 'spidermonkey.src'
    on :osx, 'spidermonkey.managed'
  }
end

dep 'spidermonkey.src' do
  source 'http://ftp.mozilla.org/pub/mozilla.org/js/js-1.8.0-rc1.tar.gz'
  configure { true } # Noop
  build { shell "make BUILD_OPT=1 -C js/src -f Makefile.ref" }
  install { sudo "make BUILD_OPT=1 JS_DIST='#{prefix}' -C js/src -f Makefile.ref export" }
  provides 'js'
end

dep 'spidermonkey.managed' do
  installs {
    via :brew, 'spidermonkey'
    via :apt, 'libxulrunner-dev'
  }
  provides 'js'
end

dep 'erlang', :template => 'managed' do
  installs {
    via :brew, 'erlang'
    via :apt, 'erlang-nox', 'erlang-dev'
  }
  provides 'erlc', 'erl'
end

dep 'wget', :template => 'managed'

dep 'imagemagick.managed' do
  provides 'convert'
end

dep 'sphinx.managed' do
  provides 'searchd'
end

dep 'geoip.managed' do
  provides []
end

dep 'freeimage.managed' do
  provides []
end

dep 'tree.managed'
