dep 'subpixel smoothing enabled' do
  met? {
    shell("defaults -currentHost read -globalDomain AppleFontSmoothing") == "2"
  }

  meet {
    shell "defaults -currentHost write -globalDomain AppleFontSmoothing -int 2"
  }
end

dep 'user font dir exists' do
  met? {
    "~/Library/Fonts".p.dir?
  }
  meet {
    log_shell "Creating ~/Library/Fonts", "mkdir ~/Library/Fonts"
  }
end

meta 'ttf' do
  accepts_list_for :source
  accepts_list_for :extra_source
  accepts_list_for :ttf_filename

  template {
    requires 'user font dir exists'
    prepare {
      setup_source_uris
    }
    met? {
      "~/Library/Fonts/#{ttf_filename.first}".p.exists?
    }
    meet {
      process_sources do
        Dir.glob("*.ttf") do |font|
          log_shell "Installing #{font}", "cp #{font} ~/Library/Fonts"
        end
      end
    }
  }
end

meta 'otf' do
  accepts_list_for :source
  accepts_list_for :extra_source
  accepts_list_for :otf_filename

  template {
    requires 'user font dir exists'
    prepare {
      setup_source_uris
    }
    met? {
      "~/Library/Fonts/#{otf_filename.first}".p.exists?
    }
    meet {
      process_sources do
        Dir.glob("*.otf") do |font|
          log_shell "Installing #{font}", "cp #{font} ~/Library/Fonts"
        end
      end
    }
  }
end

dep 'meslo.ttf' do
  source 'http://github.com/downloads/andreberg/Meslo-Font/Meslo%20LG%20DZ%20v1.0.zip'
  ttf_filename "MesloLGM-DZ-Regular.ttf"
end

dep 'crimson.otf' do
  source 'http://internode.dl.sourceforge.net/project/crimsontext/crimson_101217.zip'
  otf_filename "Crimson-Roman.otf"
end

dep 'ROKE1984.otf' do
  otf_filename "ROKE1984.otf"
  meet {
    `curl http://dl.dropbox.com/u/2971204/ROKE1984.otf > ~/Library/Fonts/ROKE1984.otf`
  }
end

dep 'user keymap dir exists' do
  met? {
    "~/Library/Keyboard Layouts".p.dir?
  }
  meet {
    log_shell "Creating ~/Library/Keyboard Layouts", "mkdir '~/Library/Keyboard Layouts'"
  }
end

dep 'colemak' do
  requires 'user keymap dir exists'

  met? {
    "~/Library/Keyboard Layouts/Colemak.keylayout".p.exists?
  }

  meet {
    log_shell "Downloading Colemak.keylayout", "curl http://colemak.com/pub/mac/Colemak.keylayout > ~/Library/\"Keyboard Layouts\"/Colemak.keylayout"
  }
end

dep 'HEXColorPicker.installer' do
  source 'http://www.luckysoftware.dk/download.php/HexColorPicker_102.pkg.zip'
end

dep 'Pow' do
  met? {
    "~/Library/Application Support/Pow/Current".p.exists?
  }

  meet {
    log_shell "Installing Pow", "curl get.pow.cx | sh"
  }
end
