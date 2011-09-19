# My Macbook Air 4,2 13", 'aries'

dep 'aries' do
  requires 'dot-files', 'private-dot-files'

  requires 'aries osx apps installed'

  requires 'subpixel smoothing enabled'

  requires 'macvim',
           'ack.managed',
           'tree.managed',
           'meslo.ttf',
           'redis',
           'htop'

  # Ruby versions
  requires 'rbenv',
           '1.9.2-p290.rbenv'
end

dep 'aries osx apps installed' do
  # Social, Web, Media etc.
  requires 'Google Chrome.app',
           'Echofon.app',
           'Skype.app',
           'LimeChat.app',
           'Airfoil.app',
           'Spotify.app'

  # System utilities
  requires 'Dropbox.app',
           'Growl.installer',
           'iStat Menus.app'

  # Tools
  requires 'Alfred.app',
           'SizeUp.app',
           '1Password.app',
           'The Hit List.app',
           'Things.app',
           'Arq.app'

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
           'Reggy.app',
           'Pow'
end
