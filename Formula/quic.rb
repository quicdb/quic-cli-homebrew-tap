class Quic < Formula
  desc "QuicDB CLI for managing database branches"
  homepage "https://quicdb.com"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quicdb/quic-cli/releases/download/v0.0.1/quic-darwin-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/quicdb/quic-cli/releases/download/v0.0.1/quic-darwin-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/quicdb/quic-cli/releases/download/v0.0.1/quic-linux-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/quicdb/quic-cli/releases/download/v0.0.1/quic-linux-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install Dir["quic-*"].first => "quic"
  end

  test do
    system "#{bin}/quic", "version"
  end
end
