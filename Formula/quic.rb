class Quic < Formula
  desc "QuicDB CLI for managing database branches"
  homepage "https://quicdb.com"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quicdb/quic-cli/releases/download/v0.1.1/quic-darwin-arm64"
      sha256 "48c4161cb7822bee69d10d916285d26d72a8111e85672dd5687e06519e9fa76c"
    else
      url "https://github.com/quicdb/quic-cli/releases/download/v0.1.1/quic-darwin-amd64"
      sha256 "b438bea0b7e731a9e7c4da901ea95261bedce21f2c2902d9cf38ddfacdb6ba70"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/quicdb/quic-cli/releases/download/v0.1.1/quic-linux-arm64"
      sha256 "1867ba07181f18a05f91c330ee9428883abe344ffd9f068a342c93a66a47b733"
    else
      url "https://github.com/quicdb/quic-cli/releases/download/v0.1.1/quic-linux-amd64"
      sha256 "251efef8d50416b95f101c170210606b37e14d46e938d0e9e64d5517a2bcdcad"
    end
  end

  def install
    bin.install Dir["quic-*"].first => "quic"
  end

  test do
    system "#{bin}/quic", "version"
  end
end
