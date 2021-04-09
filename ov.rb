# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ov < Formula
  desc "Feature rich terminal pager"
  homepage "https://github.com/noborus/ov"
  version "0.9.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/noborus/ov/releases/download/v0.9.0/ov_0.9.0_darwin_amd64.zip"
    sha256 "419e74a6542d4103c8c4f26427b85d556c8ebae2aa621bcc14539e895732fdfd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/noborus/ov/releases/download/v0.9.0/ov_0.9.0_darwin_arm64.zip"
    sha256 "db94d7724ef52d688c0385a958ccad041be6da06eeb1753e90e07426fe3baf46"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/noborus/ov/releases/download/v0.9.0/ov_0.9.0_linux_amd64.zip"
    sha256 "b6a1857454eb8d6eee7684d116db09e1978f17d8223c5c423640583a825786f0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/noborus/ov/releases/download/v0.9.0/ov_0.9.0_linux_arm.zip"
    sha256 "61a3781a2038379fd1bd92e377694edeebb76d261075b210e9e5d74f919cb7a4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/noborus/ov/releases/download/v0.9.0/ov_0.9.0_linux_arm64.zip"
    sha256 "e724e6481e533e525be36592ecfeb34fb8376e8009103becbf882d8d0a15fe25"
  end

  def install
    bin.install "ov"
  end

  test do
    system "#{bin}/ov --version"
  end
end
