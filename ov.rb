# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ov < Formula
  desc "Feature rich terminal pager"
  homepage "https://github.com/noborus/ov"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noborus/ov/releases/download/v0.10.0/ov_0.10.0_darwin_arm64.zip"
      sha256 "5bbb535197859840aca3165ac35c71d6c08d843ae8110db93323932177c2d71e"

      def install
        bin.install "ov"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noborus/ov/releases/download/v0.10.0/ov_0.10.0_darwin_amd64.zip"
      sha256 "144088555f2c03a17bafc33f7115abbfad1b7d8dc33e6ce76e6bc68bf8f31b06"

      def install
        bin.install "ov"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/ov/releases/download/v0.10.0/ov_0.10.0_linux_arm.zip"
      sha256 "84cc6bee5771eddc991319484a6cc0ce25c96d9f135003963732c5b1092be585"

      def install
        bin.install "ov"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/ov/releases/download/v0.10.0/ov_0.10.0_linux_arm64.zip"
      sha256 "b7f0e011248eb214f684559aa2edcad1f7b805957381b6f4344a15b215763824"

      def install
        bin.install "ov"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noborus/ov/releases/download/v0.10.0/ov_0.10.0_linux_amd64.zip"
      sha256 "f20493bd33adfbd3eb1da29a18ff696a58109bad083bcd0eb20fae4e0efef5ba"

      def install
        bin.install "ov"
      end
    end
  end

  test do
    system "#{bin}/ov --version"
  end
end
