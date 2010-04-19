dep 'libicu' do
  requires {
    on :osx, 'src libicu'
    on :linux, 'libicu-dev'
  }
end

pkg 'libicu-dev' do
  installs { via :apt, 'libicu-dev' }
  provides []
end

src 'src libicu' do
  # TODO fill this in!
end

pkg 'help2man'

pkg 'libcurl-dev' do
  installs {
    via :apt, 'libcurl4-openssl-dev'
  }
  provides []
end

dep 'spidermonkey' do
  requires {
    on :linux, 'src spidermonkey'
    on :osx, 'pkg spidermonkey'
  }
end

src 'src spidermonkey' do
  source 'http://ftp.mozilla.org/pub/mozilla.org/js/js-1.8.0-rc1.tar.gz'
  configure { true } # Noop
  build { shell "make BUILD_OPT=1 -C js/src -f Makefile.ref" }
  install { sudo "make BUILD_OPT=1 JS_DIST='#{prefix}' -C js/src -f Makefile.ref export" }
  provides 'js'
end

pkg 'pkg spidermonkey' do
  installs {
    via :brew, 'spidermonkey'
    via :apt, 'libxulrunner-dev'
  }
  provides 'js'
end

pkg 'erlang' do
  installs {
    via :brew, 'erlang'
    via :apt, 'erlang-nox', 'erlang-dev'
  }
  provides 'erlc', 'erl'
end
