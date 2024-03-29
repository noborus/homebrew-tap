# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mdviewer < Formula
  desc "markdown viewer"
  homepage "https://github.com/noborus/mdviewer"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/noborus/mdviewer/releases/download/v0.1.1/mdviewer_0.1.1_darwin_amd64.zip"
      sha256 "b859f0052cf8a2980b32fc3a608d24e89a0ee3f4c286634a483d9b7ce96047d4"

      def install
        bin.install "mdviewer"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/noborus/mdviewer/releases/download/v0.1.1/mdviewer_0.1.1_darwin_arm64.zip"
      sha256 "2f8350fdc17a10b420906d3fe41ccc14eb7649b92b1c579b76ca009b44e543b3"

      def install
        bin.install "mdviewer"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/mdviewer/releases/download/v0.1.1/mdviewer_0.1.1_linux_arm.zip"
      sha256 "02679760eb0c570d027a489d2bb95d59511063ecf8c754568f3efb64288cf45e"

      def install
        bin.install "mdviewer"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noborus/mdviewer/releases/download/v0.1.1/mdviewer_0.1.1_linux_amd64.zip"
      sha256 "4184fe5601f21b56fd7c63437a0f2f636c5412bddfe0b8ce7e3337272633ee42"

      def install
        bin.install "mdviewer"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/mdviewer/releases/download/v0.1.1/mdviewer_0.1.1_linux_arm64.zip"
      sha256 "937232bec97d1f3af06fa8e6e50550459a3660eb4f550cf22abf05bd3330428e"

      def install
        bin.install "mdviewer"
      end
    end
  end

  test do
    system "#{bin}/mdviewer --version"
  end
end
