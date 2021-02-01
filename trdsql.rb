class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV and JSON"
  homepage "https://github.com/noborus/trdsql/"
  version "0.8.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/noborus/trdsql/releases/download/v0.8.0/trdsql_v0.8.0_darwin_amd64.zip"
    sha256 "38f6748d12fc24180a4f75d4aaca88a665dda94a3113f00702facef74d5486d8"
  elsif OS.linux?
    url "https://github.com/noborus/trdsql/releases/download/v0.8.0/trdsql_v0.8.0_linux_amd64.zip"
    sha256 "c81969be1e34db8a768d2430f42aea031ef87246de78029047d061d267d27e77"
  end

  def install
    bin.install "trdsql"
  end

  test do
    assert_equal "3\n", pipe_output("#{bin}/trdsql 'select count(*) from -'", "a\nb\nc\n")
  end
end
