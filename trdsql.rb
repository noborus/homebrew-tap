class Trdsql < Formula
  desc "Tool to run the SQL query to CSV and LTSV and JSON"
  homepage "https://github.com/noborus/trdsql/"
  url "https://github.com/noborus/trdsql/archive/v0.4.1.tar.gz"
  version "0.4.1"
  sha256 "17aab53f4384824ea9a386f240a20b770bbbdb8c521383558febc998fad966ef"
  depends_on "dep" => :build
  depends_on "go" => :build
  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"src/github.com/noborus/trdsql").install buildpath.children
    cd "src/github.com/noborus/trdsql" do
      system "dep", "ensure", "-vendor-only"
      system "make", "build"
      bin.install "trdsql"
    end
  end

  test do
    system "true"
  end
end
