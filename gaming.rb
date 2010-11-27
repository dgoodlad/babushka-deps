dep 'PS3 Controller.installer' do
  source 'http://files.tattiebogle.net/PS3/PS3ControllerInstall.0.01.dmg'
  met? {
    '/System/Library/Extensions/PS3Enabler.kext'.p.exist?
  }
end
