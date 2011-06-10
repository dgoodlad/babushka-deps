dep 'atomicparsley', :template => 'managed'

dep 'HandBrakeCLI' do
  met? {
    "/usr/local/bin/HandBrakeCLI".p.exists?
  }

  meet {
    uri = "http://handbrake.fr/rotation.php?file=HandBrake-0.9.5-MacOSX.5_CLI_x86_64.dmg"
    handle_source uri do
    #process_sources do
      log_shell "Installing HandBrakeCLI to /usr/local/bin", "cp HandBrakeCLI /usr/local/bin/"
    end
  }
end
