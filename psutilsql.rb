# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Psutilsql < Formula
  desc "Execute SQL to markdown table and convert to other format"
  homepage "https://github.com/noborus/mdtsql"
  version "0.0.4"
  depends_on :linux

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/noborus/mdtsql/releases/download/v0.0.4/mdtsql_0.0.4_linux_amd64.tar.gz"
      sha256 "6ae61bf6c5be10f49e8710b328fd8d24a3f1df9f1a3d3376251646cd0f382e71"

      def install
        bin.install "mdtsql"
      end
    end
  end
end