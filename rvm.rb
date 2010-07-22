dep 'rvm' do
  helper(:path) {
    "~/.rvm/scripts/rvm"
  }

  met? {
    path.p.file?
  }

  meet {
    shell 'bash -c "`curl http://rvm.beginrescueend.com/releases/rvm-install-head`"'
  }
end
