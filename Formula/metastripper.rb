class Metastripper < Formula
  desc "A cross-platform command-line tool for removing privacy-sensitive metadata from files"
  homepage "https://github.com/subnetmasked/MetaStripper"
  url "https://github.com/subnetmasked/MetaStripper/archive/v0.1.2.tar.gz"
  sha256 "99dd065ee48b3874c6cd48286898ff932fb5461e5a2b95e1e40e6535a0e4bfd5"

  depends_on "rust" => :build
  depends_on "ffmpeg" => :recommended

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/metastripper", "--help"
  end
end 