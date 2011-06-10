dep 'rvm' do
  met? {
    "~/.rvm/scripts/rvm".p.file?
  }

  meet {
    shell 'bash -c "`curl https://rvm.beginrescueend.com/install/rvm`"'
  }
end
