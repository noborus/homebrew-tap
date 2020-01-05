class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV and JSON"
  homepage "https://github.com/noborus/trdsql/"
  url "https://github.com/noborus/trdsql/archive/v0.7.3.tar.gz"
  sha256 "3629553295d1f3a4a5a9c4aedef10acec2c6afd2cc274cef9c054867309d7656"
  depends_on "go" => :build
  def install
    ENV["GOPATH"] = buildpath
    ENV["GO111MODULE"]="on"
    (buildpath/"src/github.com/noborus/trdsql").install buildpath.children
    cd "src/github.com/noborus/trdsql" do
      system "go", "mod", "download"
      system "go", "build", "-o", "trdsql", "./cmd/trdsql"
      bin.install "trdsql"
    end
  end

  test do
    system "make", "test"
  end
end
