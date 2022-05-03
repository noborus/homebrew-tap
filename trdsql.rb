class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV and JSON"
  homepage "https://github.com/noborus/trdsql/"
  version "0.9.1"

  if OS.mac?
    url "https://github.com/noborus/trdsql/releases/download/v0.10.0/trdsql_v0.10.0_darwin_amd64.zip"
    sha256 "412082dc8c107acf6279770aa09c17e1facdaa07f8cde63fff95b66cf9aff25f"
  elsif OS.linux?
    url "https://github.com/noborus/trdsql/releases/download/v0.10.0/trdsql_v0.10.0_linux_amd64.zip"
    sha256 "b1a4a1d2700870f2ba201cdad1e23d92b16c3c2fea8977a783dd1662500cf37a"
  end

  def install
    bin.install "trdsql"
  end

  test do
    assert_equal "3\n", pipe_output("#{bin}/trdsql 'select count(*) from -'", "a\nb\nc\n")
  end
end
