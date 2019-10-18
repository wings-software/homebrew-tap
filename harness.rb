# This file was generated by GoReleaser. DO NOT EDIT.
class Harness < Formula
  desc "Command Line Utility for Harness"
  homepage "https://app.harness.io/"
  version "1.0.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/wings-software/harness-cli-binaries/releases/download/v1.0.5/harnesscli_Darwin_x86_64.tar.gz"
    sha256 "ea9c24415c232eb906c8cc43b427bc47cae3118494baf77f7002570d6d31ddfc"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/wings-software/harness-cli-binaries/releases/download/v1.0.5/harnesscli_Linux_x86_64.tar.gz"
      sha256 "692b59125fa5e0e45dffbd0f34bf3cda70242302660d07cb4847c2f1b79ea5fa"
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
