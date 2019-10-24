# This file was generated by GoReleaser. DO NOT EDIT.
class Harness < Formula
  desc "Command Line Utility for Harness"
  homepage "https://app.harness.io/"
  version "1.0.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/wings-software/harness-cli-binaries/releases/download/v1.0.6/harnesscli_Darwin_x86_64.tar.gz"
    sha256 "1f91e432031a697d87b9ced62607af9a119d46ef91be22f5fcddce583bc0feee"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/wings-software/harness-cli-binaries/releases/download/v1.0.6/harnesscli_Linux_x86_64.tar.gz"
      sha256 "aadeef8be7cb2764350c0cad0e1e4637e5245bdf40541d1257e7f406c4fb997b"
    end
  end

  def install
    bin.install "harness"
  end

  def caveats; <<~EOS
    harness has been installed as /usr/local/bin/harness
  EOS
  end

  test do
    system "#{bin}/harness --version"
  end
end
