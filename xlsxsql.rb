# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Xlsxsql < Formula
  desc "Execute SQL to xlsx and convert to other format"
  homepage "https://github.com/noborus/xlsxsql"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/noborus/xlsxsql/releases/download/v0.2.0/xlsxsql_0.2.0_Darwin_x86_64.tar.gz"
      sha256 "ecfa73b04772153f586f2f524cdbf131abf9f1ea63bab6720cd1b0e8bfdcd36c"

      def install
        bin.install "xlsxsql"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/noborus/xlsxsql/releases/download/v0.2.0/xlsxsql_0.2.0_Darwin_arm64.tar.gz"
      sha256 "6a03219c579a23226d0013a41ad197411a79de44df3f4a433c1fcf892476d614"

      def install
        bin.install "xlsxsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/xlsxsql/releases/download/v0.2.0/xlsxsql_0.2.0_Linux_arm64.tar.gz"
      sha256 "e8c6abb607c43a7f6f5c17bfe092f26228c7e5b6357c84ce7abc2f1c5e04b13e"

      def install
        bin.install "xlsxsql"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noborus/xlsxsql/releases/download/v0.2.0/xlsxsql_0.2.0_Linux_x86_64.tar.gz"
      sha256 "ba8786d75d8dab7a00d2251a73474781bc67a21eea81f9d517df7ab0fae706d8"

      def install
        bin.install "xlsxsql"
      end
    end
  end
end