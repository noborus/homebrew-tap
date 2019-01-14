class Trdsql < Formula
  desc "Tool to run the SQL query to CSV and LTSV and JSON"
  homepage "https://github.com/noborus/trdsql/"
  url "https://github.com/noborus/trdsql/archive/v0.5.0.tar.gz"
  version "0.5.0"
  sha256 "9d3d9e3e2b4e38ab378449c4be70f88e626612fe2502630dd5ecb75566e42e1b"
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
