class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV and JSON"
  homepage "https://github.com/noborus/trdsql/"
  url "https://github.com/noborus/trdsql/archive/v0.6.1.tar.gz"
  sha256 "d1fb4c15f8abedb16a3549290a6ff98e9979f7b5dfa678146660edad84dd54e3"
  depends_on "dep" => :build
  depends_on "go" => :build
  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"src/github.com/noborus/trdsql").install buildpath.children
    cd "src/github.com/noborus/trdsql" do
      system "make", "build"
      bin.install "trdsql"
    end
  end

  test do
    system "make", "test"
  end
end
