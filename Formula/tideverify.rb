class Tideverify < Formula
    desc "Tide platform - Out of Band Verification"
    homepage "https://github.com/tide-platform/"
    url "https://github.com/tide-platform/homebrew-tideverify/releases/download/v1.0/tideverify-1.0.tar.gz"
    sha256 "921f2a29a2aa346e93607b524817ea0227b1e636d2c3177c7c02b408f95b944a"
    version "1.0"

    def install
        bin.install Dir["*"]
        Dir["#{bin}/*"].each do |f|
        system "codesign", "--force", "--sign", "-", f if File.file?(f)
        end
      end
end
