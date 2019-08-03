class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV and JSON"
  homepage "https://github.com/noborus/trdsql/"
  url "https://github.com/noborus/trdsql/archive/v0.6.2.tar.gz"
  sha256 "caf4b3d9e5452f8c8bfb5487841f4435aff8a47ef7c9e9d3d2f1729f77ac72f3"
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
