# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Thinkument < Formula
  desc "Thinkument CLI & Offline Cognitive Studio: P x SM x C Engine"
  homepage "https://thinkument.com"
  version "0.1.0"
  license "FSL-1.1-Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thinkument/thinkument/releases/download/v0.1.0/thinkument-v0.1.0-darwin-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000" # Updated on release
    else
      url "https://github.com/thinkument/thinkument/releases/download/v0.1.0/thinkument-v0.1.0-darwin-x64.tar.gz"
      sha256 "039147370c0c914eeb568e1055a68a3a2ba1e0f0019555d1684630d499597889"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/thinkument/thinkument/releases/download/v0.1.0/thinkument-v0.1.0-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/thinkument/thinkument/releases/download/v0.1.0/thinkument-v0.1.0-linux-x64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "thinkument"
  end

  test do
    output = shell_output("#{bin}/thinkument --help")
    assert_match "Thinkument CLI", output
    assert_match "dev", output
  end
end
