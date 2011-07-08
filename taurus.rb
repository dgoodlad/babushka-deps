# My Macbook Air 11", 'taurus'

dep 'taurus' do
  requires 'taurus osx apps installed'

  requires 'macvim',
           'ack.managed',
           'tree.managed',
           'rvm',
           'meslo.ttf',
           'redis',
           'htop'
end

dep 'taurus osx apps installed' do
  # Social, Web, Media etc.
  requires 'Google Chrome.app',
           'Echofon.app',
           'Skype.app',
           'LimeChat.app',
           'Airfoil.app'

  # System utilities
  requires 'Dropbox.app',
           'Growl.installer',
           'iStat Menus.app'

  # Tools
  requires 'Alfred.app',
           'SizeUp.app',
           '1Password.app',
           'Things.app'

  # Development
  requires 'iTerm.app',
           'DTerm.app',
           'Emacs.app',
           'HTTPScoop.app',
           'HTTP Client.app',
           'Sequel Pro.app',
           'GitX.app',
           'Tower.app',
           'Kaleidoscope.app',
           'Reggy.app'
end
