# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ov < Formula
  desc "Feature rich terminal pager"
  homepage "https://github.com/noborus/ov"
  version "0.14.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/noborus/ov/releases/download/v0.14.1/ov_0.14.1_darwin_amd64.zip"
      sha256 "b5f2fef0a6b01876df03e45956fef525c907c93d379f256adcd22c832532b677"

      def install
        bin.install "ov"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/noborus/ov/releases/download/v0.14.1/ov_0.14.1_darwin_arm64.zip"
      sha256 "7b419ad5d3601c1d37c0d633057255448058f614064859bb7136d8ebcc431903"

      def install
        bin.install "ov"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/ov/releases/download/v0.14.1/ov_0.14.1_linux_arm.zip"
      sha256 "00caad0ca48bb243987af2e7c07864b5093c18a247d4b1fa65f891218fc6e9c7"

      def install
        bin.install "ov"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noborus/ov/releases/download/v0.14.1/ov_0.14.1_linux_amd64.zip"
      sha256 "27015ce0ad77bf38346c153491e73682e64f18d7630c08fb0a53f670d46a9d4e"

      def install
        bin.install "ov"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/ov/releases/download/v0.14.1/ov_0.14.1_linux_arm64.zip"
      sha256 "c486c7dc889023f6536c2596686f48fdc784c7172561a81b8e4c89fa39df06cc"

      def install
        bin.install "ov"
      end
    end
  end

  test do
    system "#{bin}/ov --version"
  end
end
