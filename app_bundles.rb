dep 'XQuartz.installer' do
  source 'http://xquartz.macosforge.org/downloads/SL/XQuartz-2.5.1.dmg'
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

