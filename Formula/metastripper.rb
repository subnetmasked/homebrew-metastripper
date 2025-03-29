class Metastripper < Formula
  desc "A cross-platform command-line tool for removing privacy-sensitive metadata from files"
  homepage "https://github.com/subnetmasked/MetaStripper"
  url "https://github.com/subnetmasked/MetaStripper/archive/v0.1.1.tar.gz"
  sha256 "4cbd01603dba0ebe621c5231e18178e24a784014f1b4cef4c072b8e78f96c83a"

  depends_on "rust" => :build
  depends_on "ffmpeg" => :recommended

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/metastripper", "--help"
  end
end 