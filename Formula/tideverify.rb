class Tideverify < Formula
  desc "Tide platform - Out of Band Verification"
  homepage "https://github.com/tide-platform/"
  url "https://github.com/tide-platform/homebrew-tide/archive/refs/tags/tideverifyv1.0.tar.gz"
  sha256 "9f92f6217aed6b9c72be92a08bad278e70dfcefa930c8def74484c115eec92cd"
  version "1.0"

  def install
    bin.install "tideverify"  # adjust this path depending on what’s in the tar.gz
    system "codesign", "--force", "--sign", "-", "#{bin}/tideverify"
  end
end
