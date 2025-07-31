class Tideverify < Formula
    desc "Tide platform - Out of Band Verification"
    homepage "https://github.com/tide-platform/"
    url "https://github.com/tide-platform/tideverify/releases/download/v1.33.7/tideverify-1.33.7.tar.gz"
    sha256 "fa01437a9184050eb834ca6db8875e4d75f2ea0ad7ff3e9135f2f6f3010b6240"
    version "1.33.7"

    def install
        bin.install Dir["*"]
        Dir["#{bin}/*"].each do |f|
        system "codesign", "--force", "--sign", "-", f if File.file?(f)
        end
      end

    def caveats
        <<~EOS
        To finish installation, add the following line to .zshrc or .bashrc  
  source #{bin}/completion.sh
Then reopen your terminal app
        EOS
    end
    end
