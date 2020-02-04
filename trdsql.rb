class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV and JSON"
  homepage "https://github.com/noborus/trdsql/"
  url "https://github.com/noborus/trdsql/archive/v0.7.4.tar.gz"
  sha256 "f3bf3dd0106d459c03c59b42cff0f4acab35708aa250ca5b034631da30cf4b49"
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
