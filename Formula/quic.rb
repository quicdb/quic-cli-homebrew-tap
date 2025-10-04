class Quic < Formula
  desc "QuicDB CLI for managing database branches"
  homepage "https://quicdb.com"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quicdb/quic-cli/releases/download/v1.0.2/quic-darwin-arm64"
      sha256 "71fca7c1c6ab88b87c25c2d1d1d7c6f538bc6d596fd754677c95a4f81ec6ba96"
    else
      url "https://github.com/quicdb/quic-cli/releases/download/v1.0.2/quic-darwin-amd64"
      sha256 "a991e1fbc8b545639e3df099da585a3900b453a4349d9950f85b2631ad5dad57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/quicdb/quic-cli/releases/download/v1.0.2/quic-linux-arm64"
      sha256 "876878d3d3fb46549a5afd949692c997d7d36898e4c5f0b8c3d5dcd19ff217d0"
    else
      url "https://github.com/quicdb/quic-cli/releases/download/v1.0.2/quic-linux-amd64"
      sha256 "0790f886387839d99fef26930435b377f43f98f3cd1da1baf2ec089eeea83169"
    end
  end

  def install
    bin.install Dir["quic-*"].first => "quic"
  end

  test do
    system "#{bin}/quic", "version"
  end
end
