# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ov < Formula
  desc "Feature rich terminal pager"
  homepage "https://github.com/noborus/ov"
  version "0.9.2"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/noborus/ov/releases/download/v0.9.2/ov_0.9.2_darwin_amd64.zip"
    sha256 "0d2dc18b7bfb8d3b719dcf8b4af24058de0b90141d01c6bc255caea08a862597"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/noborus/ov/releases/download/v0.9.2/ov_0.9.2_darwin_arm64.zip"
    sha256 "2336155b2253441f37656fa89366000351b0ab6f03a6a799e938beaacb7a9cec"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/noborus/ov/releases/download/v0.9.2/ov_0.9.2_linux_amd64.zip"
    sha256 "7d4bc16bed5c28c94f201005eebbd54cc65cc659ab35fdb1cff6efaeb19e9849"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/noborus/ov/releases/download/v0.9.2/ov_0.9.2_linux_arm.zip"
    sha256 "6f3c76469dce1904f714c2631333a5b0513e1b648390380f763b4bfedf52cb09"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/noborus/ov/releases/download/v0.9.2/ov_0.9.2_linux_arm64.zip"
    sha256 "ed14e6d38d1c0d9a97a6c5860074221d8ec081fa7b0289a0d54908a51d4577a4"
  end

  def install
    bin.install "ov"
  end

  test do
    system "#{bin}/ov --version"
  end
end
