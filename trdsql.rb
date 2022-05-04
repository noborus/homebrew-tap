class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV and JSON"
  homepage "https://github.com/noborus/trdsql/"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noborus/trdsql/releases/download/v0.10.0/trdsql_v0.10.0_darwin_arm64.zip"
      sha256 "803678fdbca6faed6da25fc02ba6caba0dba81d612781ba388728901853e12ab"
    end
    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v0.10.0/trdsql_v0.10.0_darwin_amd64.zip"
      sha256 "412082dc8c107acf6279770aa09c17e1facdaa07f8cde63fff95b66cf9aff25f"
      def install
        bin.install "trdsql"
      end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/trdsql/releases/download/v0.10.0/trdsql_v0.10.0_linux_arm64.zip"
      sha256 "1f2b534840faed45f1ab1f56257e13e22aa0d1ba80678e5a8724cc5d29c18e12"
      def install
        bin.install "trdsql"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v0.10.0/trdsql_v0.10.0_linux_amd64.zip"
      sha256 "b1a4a1d2700870f2ba201cdad1e23d92b16c3c2fea8977a783dd1662500cf37a"

      def install
        bin.install "trdsql"
      end
    end
  end

  test do
    assert_equal "3\n", pipe_output("#{bin}/trdsql 'select count(*) from -'", "a\nb\nc\n")
  end
end
