dep 'subpixel smoothing enabled' do
  met? {
    shell("defaults -currentHost read -globalDomain AppleFontSmoothing") == "2"
  }

  meet {
    shell "defaults -currentHost write -globalDomain AppleFontSmoothing -int 2"
  }
end
