dep 'Google Chrome.app' do
  source 'http://dl.google.com/chrome/mac/dev/GoogleChrome.dmg'
end

dep 'XQuartz.installer' do
  source 'http://xquartz.macosforge.org/downloads/SL/XQuartz-2.5.3.dmg'
  met? { '/Applications/Utilities/XQuartz.app'.p.exists?  }
end

dep 'SizeUp.app' do
  source 'http://irradiatedsoftware.com/downloads/SizeUp.zip'
end

dep 'iStat Menus.app' do
  source 'http://s3.amazonaws.com/bjango/files/istatmenus3/istatmenus3.03.zip'
end

dep 'Alfred.app' do
  source 'http://media.alfredapp.com/alfred_0.6.6_beta_34.dmg'
end

dep '1Password.app' do
  source 'http://aws.cachefly.net/aws/dmg/1PW3/English/1Password-3.2.5.dmg'
end

dep 'HTTPScoop.app' do
  source 'http://www.tuffcode.com/releases/HTTPScoop_1.4.3.dmg'
end

dep 'iTerm.app' do
  source 'http://downloads.sourceforge.net/project/iterm/iTerm.app/0.10/iTerm_0.10.zip?use_mirror=internode&ts=1279677948'
end

dep 'Sequel Pro.app' do
  source 'http://sequel-pro.googlecode.com/files/sequel-pro-0.9.8.dmg'
end

dep 'Echofon.app' do
  source 'http://www.echofon.com/twitter/mac/bin/Echofon.dmg'
end

dep 'Growl.installer' do
  source 'http://growl.cachefly.net/Growl-1.2.1.dmg'
  pkg_name 'Growl.pkg'
  provides 'growlnotify'
end

dep 'Dropbox.app' do
  source 'http://cdn.dropbox.com/Dropbox%200.7.110.dmg'
end

dep 'LaunchBar.app' do
  source 'http://www.obdev.at/downloads/launchbar/LaunchBar-5.0.3.dmg'
end

dep 'Airfoil.app' do
  source 'http://www.rogueamoeba.com/airfoil/download/Airfoil.zip'
end

dep 'Skype.app' do
  source 'http://www.skype.com/go/getskype-macosx.dmg'
end

dep 'SIMBL.installer' do
  source 'http://www.culater.net/dl/files/SIMBL-0.9.7a.zip'
  met? { '/Library/ScriptingAdditions/SIMBL.osax'.p.exists? }
end

dep 'GitX.app' do
  source 'http://frim.frim.nl/GitXStable.app.zip'
end

dep 'VirtualBox.installer' do
  source 'http://download.virtualbox.org/virtualbox/3.2.8/VirtualBox-3.2.8-64453-OSX.dmg'
  met? { '/Applications/VirtualBox.app'.p.exists? }
end

dep 'HTTP Client.app' do
  source 'http://ditchnet.org/httpclient/dist/HTTPClient.zip'
end

dep 'LimeChat.app' do
  source 'http://cloud.github.com/downloads/psychs/limechat/LimeChat_2.15.tbz'
end

dep 'FreeMind.app' do
  source 'http://downloads.sourceforge.net/project/freemind/freemind/0.8.1/Mac_OS_X_Freemind-0_8_1.dmg?r=http%3A%2F%2Ffreemind.sourceforge.net%2Fwiki%2Findex.php%2FDownload&ts=1283229902&use_mirror=internode'
end

dep 'Pixelmator.app' do
  source 'http://pixelmator.s3.amazonaws.com/Pixelmator.zip'
end

dep 'Acorn.app' do
  source 'http://static.macheist.com/bundle/mh3/dl/Acorn.zip'
end

dep 'OmniGraffle.app' do
  source 'http://www.omnigroup.com/ftp1/pub/software/MacOSX/10.5/OmniGraffle-5.2.3-English.dmg'
end

dep 'Firefox.app' do
  source 'http://mirror.internode.on.net/pub/mozilla/firefox/releases/4.0b4/mac64/en-US/Firefox%204.0%20Beta%204.dmg'
end

dep 'The Hit List.app' do
  source 'http://www.potionfactory.com/thehitlist/download/'
end

dep 'KeyCastr.app' do
  source 'http://stephendeken.net/software/keycastr/releases/keycastr_0.8.0.dmg'
end

dep 'Evernote.app' do
  source 'http://evernote.s3.amazonaws.com/mac/release/Evernote_93489.dmg'
end

dep 'Plex.app' do
  source 'http://ftp.df.lth.se/pub/plex/Plex-v0.9.0.21.dmg'
end

dep 'Tunnelblick.app' do
  source 'http://tunnelblick.googlecode.com/files/Tunnelblick_3.0.dmg'
end

dep 'VMWare Fusion.installer' do
  source 'https://download2.vmware.com/software/fusion/VMware-Fusion-3.1.1-282344-light.dmg'
end

dep 'Synergy.installer' do
  source 'http://synergy-plus.googlecode.com/files/synergy-plus-1.3.4-Darwin-i386.dmg'
  provides 'synergyc', 'synergys'
  met? { provided? }
end

dep 'KisMAC.app' do
  source 'http://update.kismac-ng.org/binaries/KisMAC-0.3.dmg'
end

dep 'Boxer.app' do
  source 'http://boxer.washboardabs.net/download/boxer_0.88-20091018-1.dmg'
end

dep 'Pixelmator.app' do
  source 'http://pixelmator.s3.amazonaws.com/Pixelmator.zip'
end

dep 'Flux.app' do
  source 'http://secure.herf.org/flux/Flux.zip'
end

dep 'Think.app' do
  source 'http://s3.freeverse.com/Mac/Think/Think.dmg'
end

dep 'Isolator.app' do
  source 'http://willmore.eu/software/download/Isolator-4.4.dmg'
end

dep 'Bonjour Mounter.app' do
  source 'http://bonjourmounter.gestosoft.com/download/Bonjour%20Mounter%203.0.11.zip'
end

dep 'Notational Velocity.app' do
  source 'http://notational.net/NotationalVelocity.zip'
end

dep 'KeyRemap4MacBook.installer' do
  source 'http://pqrs.org/macosx/keyremap4macbook/files/KeyRemap4MacBook-6.9.0.pkg.zip'
end
