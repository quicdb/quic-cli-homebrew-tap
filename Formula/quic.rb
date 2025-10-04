class Quic < Formula
  desc "QuicDB CLI for managing database branches"
  homepage "https://quicdb.com"
  version "1.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quicdb/quic-cli/releases/download/v1.0.3/quic-darwin-arm64"
      sha256 "97b6d9c0215da766d5b0ff83c6e95a43f60991a0cd592fcce33da10401a3d087"
    else
      url "https://github.com/quicdb/quic-cli/releases/download/v1.0.3/quic-darwin-amd64"
      sha256 "6bd6358154540822dd6b25a9749ab9b614e7ca82e98849ab3f936dec2eb1c575"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/quicdb/quic-cli/releases/download/v1.0.3/quic-linux-arm64"
      sha256 "4a8811ece7c9bf554389cc8a4c413763de52c57a3854604b48071ea6a830c2ba"
    else
      url "https://github.com/quicdb/quic-cli/releases/download/v1.0.3/quic-linux-amd64"
      sha256 "2cfd5148b807dc0b92e867ffc512e3e6925820f79833dc3b0f190018c9c46d40"
    end
  end

  def install
    bin.install Dir["quic-*"].first => "quic"
  end

  test do
    system "#{bin}/quic", "version"
  end
end
