class Quic < Formula
  desc "QuicDB CLI for managing database branches"
  homepage "https://quicdb.com"
  version "1.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quicdb/quic-cli/releases/download/v1.0.5/quic-darwin-arm64"
      sha256 "9c0ce6415b7b2ca7a2c02ac36efaf0d4455de16c1f69a3a6f9095ab7ff6a3376"
    else
      url "https://github.com/quicdb/quic-cli/releases/download/v1.0.5/quic-darwin-amd64"
      sha256 "fcf92f872081715e1356d0a927fea9c7644a3e82fbaeb6d9d7d67cce8b52857e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/quicdb/quic-cli/releases/download/v1.0.5/quic-linux-arm64"
      sha256 "1f6f38834315e296440e6648c68aa57d53018e8dc98e95b6f0b613b97c200df5"
    else
      url "https://github.com/quicdb/quic-cli/releases/download/v1.0.5/quic-linux-amd64"
      sha256 "545ba9569e14ea6957bbe9a132f67b5e040b9aeb99a15a4e5a0ad16cb16a2368"
    end
  end

  def install
    bin.install Dir["quic-*"].first => "quic"
  end

  test do
    system "#{bin}/quic", "version"
  end
end
