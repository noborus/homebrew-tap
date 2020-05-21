class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV and JSON"
  homepage "https://github.com/noborus/trdsql/"
  version "0.7.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/noborus/trdsql/releases/download/v0.7.6/trdsql_v0.7.6_darwin_amd64.zip"
    sha256 "b0e36c1fdc76c002347701987bd3006b14842ef8b69e3dcf307bc3288087d050"
  elsif OS.linux?
    url "https://github.com/noborus/trdsql/releases/download/v0.7.6/trdsql_v0.7.6_linux_amd64.zip"
    sha256 "09b7b341a009400c4f57dc436b4822ce2f38ae486e868dcea224850901dab709"
  end

  def install
      bin.install "trdsql"
  end
end
