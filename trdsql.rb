class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV and JSON"
  homepage "https://github.com/noborus/trdsql/"
  version "0.9.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/noborus/trdsql/releases/download/v0.9.0/trdsql_v0.9.0_darwin_amd64.zip"
    sha256 "3eaefdba959a872a1e5caf10ed4884163491ef4f6f37401c72b8026ea19bd1fc"
  elsif OS.linux?
    url "https://github.com/noborus/trdsql/releases/download/v0.9.0/trdsql_v0.9.0_linux_amd64.zip"
    sha256 "30c0e6cdcc836d83e8a9230061b6dc4315aa94ebcf8b5d38e9bda3fe6115aa44"
  end

  def install
    bin.install "trdsql"
  end

  test do
    assert_equal "3\n", pipe_output("#{bin}/trdsql 'select count(*) from -'", "a\nb\nc\n")
  end
end
