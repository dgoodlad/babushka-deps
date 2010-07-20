dep 'XQuartz.installer' do
  source 'http://xquartz.macosforge.org/downloads/SL/XQuartz-2.5.1.dmg'
  met? { '/Applications/Utilities/XQuartz.app'.p.exists?  }
end

dep 'SizeUp.app' do
  source 'http://irradiatedsoftware.com/downloads/SizeUp.zip'
end

