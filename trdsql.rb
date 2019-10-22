class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV and JSON"
  homepage "https://github.com/noborus/trdsql/"
  url "https://github.com/noborus/trdsql/archive/v0.7.2.tar.gz"
  sha256 "93e19dbd6c0c411988a8dcf72f6555f3c16d9e4540cb743ddece1453cb385fe8"
  depends_on "go" => :build
  def install
    ENV["GOPATH"] = buildpath
    ENV["GO111MODULE"]="on"
    (buildpath/"src/github.com/noborus/trdsql").install buildpath.children
    cd "src/github.com/noborus/trdsql" do
      system "go", "mod", "download"
      system "make", "build"
      bin.install "trdsql"
    end
  end

  test do
    system "make", "test"
  end
end
