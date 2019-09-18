# This file was generated by GoReleaser. DO NOT EDIT.
class Harness < Formula
  desc "Harness"
  homepage "https://app.harness.io/"
  version "0.0.5-rc1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/wings-software/harness-cli-binaries/blob/master/harnesscli_0.0.5-rc1_Darwin_x86_64.tar.gz?raw=true"
    sha256 "3de706ee4f5d4777220ce5726a58b56948cc8fa871dcb269e05b04052eaad55e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/wings-software/harness-cli-binaries/blob/master/harnesscli_0.0.5-rc1_Linux_x86_64.tar.gz?raw=true"
      sha256 "7c3549574829e5054049bd8fbb062dbf8118f720478b855fd2289fced477607b"
    end
  end

  def install
    bin.install "harness"
  end

  def caveats; <<~EOS
    Harness Cmd Utility
  EOS
  end

  test do
    system "#{bin}/harness --version"
  end
end
