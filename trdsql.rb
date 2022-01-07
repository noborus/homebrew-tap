class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV and JSON"
  homepage "https://github.com/noborus/trdsql/"
  version "0.9.1"

  if OS.mac?
    url "https://github.com/noborus/trdsql/releases/download/v0.9.1/trdsql_v0.9.1_darwin_amd64.zip"
    sha256 "b154e0cac68d864c3607cf79470594cd4c918c976fbe7cc9d7d1f46151e9f966"
  elsif OS.linux?
    url "https://github.com/noborus/trdsql/releases/download/v0.9.1/trdsql_v0.9.1_linux_amd64.zip"
    sha256 "f8883e94905a2e32e8df589ae09e00f7cbdfb1937683852852626467e2b9582c"
  end

  def install
    bin.install "trdsql"
  end

  test do
    assert_equal "3\n", pipe_output("#{bin}/trdsql 'select count(*) from -'", "a\nb\nc\n")
  end
end
