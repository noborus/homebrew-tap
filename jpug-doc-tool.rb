# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class JpugDocTool < Formula
  desc "jpug-doc tool"
  homepage "https://github.com/noborus/jpug-doc-tool"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noborus/jpug-doc-tool/releases/download/v0.4.0/jpug-doc-tool_0.4.0_darwin_arm64.tar.gz"
      sha256 "7b45554da4c0fcd5dfdd022803828f21a6f0e5f737c572190f3174064e57e7c1"

      def install
        bin.install "jpug-doc-tool"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noborus/jpug-doc-tool/releases/download/v0.4.0/jpug-doc-tool_0.4.0_darwin_amd64.tar.gz"
      sha256 "26d002807db31f4404e63238860f597459cb0b9ae971410a02c20ed7c3205983"

      def install
        bin.install "jpug-doc-tool"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/jpug-doc-tool/releases/download/v0.4.0/jpug-doc-tool_0.4.0_linux_arm64.tar.gz"
      sha256 "b253775c2bef97b7a8ccc250eda365acd23e41621c6e659f949efe12fbef215b"

      def install
        bin.install "jpug-doc-tool"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noborus/jpug-doc-tool/releases/download/v0.4.0/jpug-doc-tool_0.4.0_linux_amd64.tar.gz"
      sha256 "f8c03a2e1ffda93fb074c92aeedc7b8729dbcb9ccd306ff5367f91944a96dba5"

      def install
        bin.install "jpug-doc-tool"
      end
    end
  end

  test do
    system "#{bin}/jpug-doc-tool --version"
  end
end
