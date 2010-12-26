# Complete setup for my Macbook Pro, 'orion'

dep 'orion' do
  requires 'orion osx apps installed'

  requires 'macvim',
           'tmux',
           'ack.managed',
           'tree.managed'

  requires 'rvm'
  requires 'nvm'
end

dep 'orion osx apps installed' do
  # Social, Web, Media etc.
  requires 'Google Chrome.app',
           'Echofon.app',
           'Skype.app',
           'LimeChat.app',
           'Airfoil.app'

  # System utilities
  requires 'Dropbox.app',
           'Growl.installer',
           'iStat Menus.app',
           'KeyRemap4MacBook.installer',
           'Bonjour Browser.app',
           'gfxCardStatus.app'

  # Tools
  requires 'LaunchBar.app',
           'SizeUp.app',
           '1Password.app',
           'The Hit List.app',
           'TextExpander.app'

  # Development
  requires 'iTerm.app',
           'HTTPScoop.app',
           'Sequel Pro.app',
           'GitX.app',
           'Tower.app',
           'Kaleidoscope.app',
           'Reggy.app',
           'VMWare Fusion.installer',
           'VirtualBox.installer',
           'CoRD.app'
end
