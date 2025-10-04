class Quic < Formula
  desc "QuicDB CLI for managing database branches"
  homepage "https://quicdb.com"
  version "1.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quicdb/quic-cli/releases/download/v1.0.6/quic-darwin-arm64"
      sha256 "abe827fb997acbac269170f3175e15ba113955dfc5980e67b45b2ed127f8c3f4"
    else
      url "https://github.com/quicdb/quic-cli/releases/download/v1.0.6/quic-darwin-amd64"
      sha256 "ad194e7df985f9a06fb0b2290a540388b81f469657caa764a650a4f07c0e5f3e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/quicdb/quic-cli/releases/download/v1.0.6/quic-linux-arm64"
      sha256 "54bb51435ad35c5e7a9d278e7a5ed78ebbc6f96c8c5bde08a7ff07b662ccccf2"
    else
      url "https://github.com/quicdb/quic-cli/releases/download/v1.0.6/quic-linux-amd64"
      sha256 "321d016300e37fd320b973cf36d8b2f2d0a3ef6393aa8dffbd1709812467c0aa"
    end
  end

  def install
    bin.install Dir["quic-*"].first => "quic"
  end

  test do
    system "#{bin}/quic", "version"
  end
end
