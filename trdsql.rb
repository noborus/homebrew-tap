class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV and JSON"
  homepage "https://github.com/noborus/trdsql/"
  version "0.7.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/noborus/trdsql/releases/download/v0.7.5/trdsql_v0.7.5_darwin_amd64.zip"
    sha256 "aa794f7484c606aa0b0f1fbe87a235790f5073874fea6d43907d1081de24d14c"
  elsif OS.linux?
    url "https://github.com/noborus/trdsql/releases/download/v0.7.5/trdsql_v0.7.5_linux_amd64.zip"
    sha256 "343471ceb0bb4415bbb4ba1d7aeec0ebf4300ddae8c942957feadb77149d6be8"
  end

  def install
      bin.install "trdsql"
  end
end
