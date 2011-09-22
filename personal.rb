meta 'dotfiles' do
  accepts_value_for :repo, :basename
  accepts_value_for :target, :basename

  template {
    met? { "#{ENV['HOME']}/.#{target}/.git".p.dir? }
    meet {
      log_shell "Cloning", "git clone git@github.com:dgoodlad/#{repo}.git #{ENV['HOME']}/.#{target}"
      log_shell "Symlinking", "cd .#{target} && ./clone_and_link.sh"
    }
  }
end

dep 'dot-files', :template => 'dotfiles'
dep 'private-dot-files', :template => 'dotfiles'

dep 'projects' do
  met? {
    (ENV['HOME'] / "Projects").dir?
  }

  meet {
    log_shell "Make ~/Projects", 'mkdir ~/Projects'
  }
end

dep 'dev symlinked to projects' do
  met? {
    (ENV['HOME'] / 'dev').symlink?
  }

  meet {
    log_shell "Symlink ~/dev", 'ln -s $HOME/Projects $HOME/dev'
  }
end
