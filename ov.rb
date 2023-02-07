# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ov < Formula
  desc "Feature rich terminal pager"
  homepage "https://github.com/noborus/ov"
  version "0.14.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/noborus/ov/releases/download/v0.14.2/ov_0.14.2_darwin_amd64.zip"
      sha256 "45a1c7b62edec738ccb44d10f15e60a9ef8b4b37d3e387407490db59e8446c71"

      def install
        bin.install "ov"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/noborus/ov/releases/download/v0.14.2/ov_0.14.2_darwin_arm64.zip"
      sha256 "624217a8f98c8ce41c3d9540f025220f4b3ee31820ee536e77c77841202c2281"

      def install
        bin.install "ov"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/ov/releases/download/v0.14.2/ov_0.14.2_linux_arm64.zip"
      sha256 "3dd9f57b924e85d8f4f6cac5b753eb086102d9b2e1f348bca29570120e5ac34e"

      def install
        bin.install "ov"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/ov/releases/download/v0.14.2/ov_0.14.2_linux_arm.zip"
      sha256 "501a7757ff0c632913acef36a66aa4dcc6f767280f85117aa270e05f0b9b1eaa"

      def install
        bin.install "ov"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noborus/ov/releases/download/v0.14.2/ov_0.14.2_linux_amd64.zip"
      sha256 "88f8bbb3ada5c9526ca1503cb9b91a97e330766d7a8bee43e76cd4c5c5bf2975"

      def install
        bin.install "ov"
      end
    end
  end

  test do
    system "#{bin}/ov --version"
  end
end
