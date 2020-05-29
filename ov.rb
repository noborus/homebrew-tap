# This file was generated by GoReleaser. DO NOT EDIT.
class Ov < Formula
  desc "ov is a feature rich terminal pager."
  homepage "https://github.com/noborus/ov"
  version "0.2.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/noborus/ov/releases/download/v0.2.1/ov_0.2.1_darwin_amd64.zip"
    sha256 "1003b82bca4338d078a188c375b531e7af6e54d72af7799bc9f8ec4204cae733"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/noborus/ov/releases/download/v0.2.1/ov_0.2.1_linux_amd64.zip"
      sha256 "e58115c1e9cb384887d968c3df1b1c515561827dab6dfbf8fe6672e2c295d595"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/noborus/ov/releases/download/v0.2.1/ov_0.2.1_linux_arm64.zip"
        sha256 "24240fb98dfffbc0e3e1726a34add9974780f4e1562a7102ba76bbc3a92c4c4f"
      else
        url "https://github.com/noborus/ov/releases/download/v0.2.1/ov_0.2.1_linux_arm.zip"
        sha256 "20e48b72226e125ad540873bba7b2a98de002b6c649a3cedf0f1fdfd23fda609"
      end
    end
  end

  def install
    bin.install 'ov'
  end
end
