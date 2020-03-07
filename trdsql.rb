class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV and JSON"
  homepage "https://github.com/noborus/trdsql/"
  url "https://github.com/noborus/trdsql/archive/v0.7.5.tar.gz"
  sha256 "abe0103fac8e176dafd7ae51765277f35f8d3974f76834e3f1497b8adcdc69e3"
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
