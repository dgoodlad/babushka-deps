dep 'SABnzbd.app' do
  source 'http://internode.dl.sourceforge.net/project/sabnzbdplus/sabnzbdplus/sabnzbd-0.5.4/SABnzbd-0.5.4-osx.dmg'
end

dep 'sick-beard' do
  helper(:install_prefix) { ENV['HOME'].p }
  helper(:install_dir) { "Sick Beard".p }
  met? { (install_prefix / install_dir).dir? }
  meet {
    git "http://github.com/midgetspy/Sick-Beard.git", :prefix => install_prefix, :dir => install_dir
  }
end

