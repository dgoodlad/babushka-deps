dep 'core software' do
  requires {
    on :linux, 'vim', 'curl', 'htop', 'jnettop', 'screen', 'nmap'
    on :osx, 'curl', 'jnettop', 'nmap'
  }
end

dep 'user shell setup' do
  requires 'dot files'
end

#dep 'user shell zsh' do
#  requires 'zsh'
#  met? { File.basename(sudo('echo \$SHELL', :as => var(:username), :su => true)) == 'zsh' }
#  meet { sudo "chsh -s #{shell('which zsh')} #{var(:username)}" }
#end
