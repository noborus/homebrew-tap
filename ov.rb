# This file was generated by GoReleaser. DO NOT EDIT.
class Ov < Formula
  desc "ov is a feature rich terminal pager."
  homepage "https://github.com/noborus/ov"
  version "0.6.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/noborus/ov/releases/download/v0.6.0/ov_0.6.0_darwin_amd64.zip"
    sha256 "92d0f267aab8bab7e948813bcf19c5cba808cd3c1e848b70a3b30fc00c0eb808"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/noborus/ov/releases/download/v0.6.0/ov_0.6.0_linux_amd64.zip"
      sha256 "11c5f61ce01f25c4c0f80980b749bbc5f1bb3fb4ca2d7427a01d4a98cc1bb905"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/noborus/ov/releases/download/v0.6.0/ov_0.6.0_linux_arm64.zip"
        sha256 "df97fc811d2505f82182bc1a04b9dc5d239fe46ef8bb840df47b4b1aa131b7ee"
      else
        url "https://github.com/noborus/ov/releases/download/v0.6.0/ov_0.6.0_linux_arm.zip"
        sha256 "c8d143d07ad6a406c72d70a69dac7900719f12528541d21d866efa0dc544a362"
      end
    end
  end

  def install
    bin.install 'ov'
  end
end