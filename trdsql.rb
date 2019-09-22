class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV and JSON"
  homepage "https://github.com/noborus/trdsql/"
  url "https://github.com/noborus/trdsql/archive/v0.7.1.tar.gz"
  sha256 "f498f2b6302f1f99489105a833615124dc2a9c8eb2a6fe20e6c9d39434dd5371"
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
