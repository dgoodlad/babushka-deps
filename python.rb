meta 'py' do
  accepts_list_for :pkg_name, :default_pkg_name
  accepts_list_for :provides, :default_binary

  def default_pkg_name
    Babushka::VersionOf.new basename
  end

  def default_binary
    Babushka::VersionOf.new basename.downcase
  end

  template {
    met? { provided? }
    meet {
      log_shell "install", "easy_install #{pkg_name}"
    }
  }
end

meta 'pip' do
  accepts_list_for :pkg_name, :default_pkg_name
  accepts_list_for :provides, :default_binary

  def default_pkg_name
    Babushka::VersionOf.new basename
  end

  def default_binary
    Babushka::VersionOf.new basename.downcase
  end

  template {
    met? { provided? }
    meet {
      log_shell "install", "pip install #{pkg_name.first}"
    }
  }
end

dep 'Cheetah.py'

dep 'mercurial.pip' do
  provides 'hg'
end

dep 'pygments.pip' do
  provides 'pygmentize'
end
