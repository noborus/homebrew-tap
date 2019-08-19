class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV and JSON"
  homepage "https://github.com/noborus/trdsql/"
  url "https://github.com/noborus/trdsql/archive/v0.6.3.tar.gz"
  sha256 "0253a2701e614694f313f48a3a334b229e2afc051320a49a59d9461a14264900"
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
