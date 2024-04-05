class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV, JSON and TBLN"
  homepage "https://github.com/noborus/trdsql/"
  version  "1.0.0-alpha-1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noborus/trdsql/releases/download/v1.0.0-alpha-1/trdsql_v1.0.0-alpha-1_darwin_arm64.zip"
      sha256 "ddbccafad299c6bd3ca30516b9d300dd976d327e1d9b152170d7c3e30160759b"
      def install
        bin.install "trdsql"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v1.0.0-alpha-1/trdsql_v1.0.0-alpha-1_darwin_amd64.zip"
      sha256 "0d901773c508ff8b044126b0be40ba0ca0c2cb230e65d99327dffa3303d4f949"
      def install
        bin.install "trdsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/trdsql/releases/download/v1.0.0-alpha-1/trdsql_v1.0.0-alpha-1_linux_arm64.zip"
      sha256 "8fce59775c6054cb42e8ff580512467ce98b834b538e66738def22fe23ebbbb1"
      def install
        bin.install "trdsql"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v1.0.0-alpha-1/trdsql_v1.0.0-alpha-1_linux_amd64.zip"
      sha256 "ecd2ac7ac20732aac3a01c5964c7f03b6889beb47ebb08e83a21018508a9d71c"
      def install
        bin.install "trdsql"
      end
    end
  end

  test do
    assert_equal "3\n", pipe_output("#{bin}/trdsql 'select count(*) from -'", "a\nb\nc\n")
  end
end
