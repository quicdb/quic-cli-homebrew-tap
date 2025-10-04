class Quic < Formula
  desc "QuicDB CLI for managing database branches"
  homepage "https://quicdb.com"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quicdb/quic-cli/releases/download/v0.1.5/quic-darwin-arm64"
      sha256 "631fe4b85bcfe160e6874c5dfa9ebe93077780b3322a217a3d7e955ebc4e0def"
    else
      url "https://github.com/quicdb/quic-cli/releases/download/v0.1.5/quic-darwin-amd64"
      sha256 "bfb0fc435be4937e90c00f1ae2a5e39c81a659e595306aa9e8337126aa932cd7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/quicdb/quic-cli/releases/download/v0.1.5/quic-linux-arm64"
      sha256 "68393b9d5cce592d0952c114673d75e537f3e4931511e4a3c3dd71b09af64061"
    else
      url "https://github.com/quicdb/quic-cli/releases/download/v0.1.5/quic-linux-amd64"
      sha256 "bf73b3b5de7685500f91c72ee5cdafcbc6e0bb7eec05a34653ea6eeb2d1dcb2b"
    end
  end

  def install
    bin.install Dir["quic-*"].first => "quic"
  end

  test do
    system "#{bin}/quic", "version"
  end
end
