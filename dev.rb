dep 'rxvt-unicode', :template => 'managed' do
  provides 'urxvt', 'urxvtc', 'urxvtd'
end

dep 'macvim', :template => 'managed' do
  provides 'mvim'
end

dep 'tmux', :template => 'managed'
dep 'dvtm', :template => 'managed'
