class Tideverify < Formula
    desc "Tide platform - Out of Band Verification"
    homepage "https://github.com/tide-platform/"
    url "https://github.com/tide-platform/homebrew-tide/releases/download/v1.0/tideverify-1.0.tar.gz"
    sha256 "31546754b63cd41eb8b370b0c3358daaf5305cdfc8cb4c122d2ac4f7fb43fe6a"
    version "1.0"

    def install
        bin.install Dir["*"]
        Dir["#{bin}/*"].each do |f|
        system "codesign", "--force", "--sign", "-", f if File.file?(f)
        end
      end
end
