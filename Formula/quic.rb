class Quic < Formula
  desc "QuicDB CLI for managing database branches"
  homepage "https://quicdb.com"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quicdb/quic-cli/releases/download/v1.0.1/quic-darwin-arm64"
      sha256 "52bcf71df55e25140a05a6fbafb9215486c30ac3f47243be5e58a10e16e72de6"
    else
      url "https://github.com/quicdb/quic-cli/releases/download/v1.0.1/quic-darwin-amd64"
      sha256 "19ede3b837315c1d9509fccccea8cceb876f2076edbf445a039538c7c6da79c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/quicdb/quic-cli/releases/download/v1.0.1/quic-linux-arm64"
      sha256 "d58310993651f8d24b47ed90a37a3faf6d58a0bfb2732e92650fe86d6ed7c0d5"
    else
      url "https://github.com/quicdb/quic-cli/releases/download/v1.0.1/quic-linux-amd64"
      sha256 "eff69e1985912866720b08fc917d3e9b260eb6146dc873628310877b8bf6a462"
    end
  end

  def install
    bin.install Dir["quic-*"].first => "quic"
  end

  test do
    system "#{bin}/quic", "version"
  end
end
