class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV, JSON and TBLN"
  homepage "https://github.com/noborus/trdsql/"
  version  "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noborus/trdsql/releases/download/v1.0.1/trdsql_v1.0.1_darwin_arm64.zip"
      sha256 "045d022f18ca917410a17b75475b85ff0a2556a91740e3f61790bcba9922b7ae"
      def install
        bin.install "trdsql"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v1.0.1/trdsql_v1.0.1_darwin_amd64.zip"
      sha256 "78b35fda70e4ccdc227be004eda095bf734699539d83b11799b4947d58af6e07"
      def install
        bin.install "trdsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/trdsql/releases/download/v1.0.1/trdsql_v1.0.1_linux_arm64.zip"
      sha256 "e9b2dc03e1e55a33329b465ab7fd61a496440a619925972d68d01bb0795e4abc"
      def install
        bin.install "trdsql"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v1.0.1/trdsql_v1.0.1_linux_amd64.zip"
      sha256 "0e57886f104788dd3eed6f31e4fb12f3b85280fb8bd9968333e5cb05f3075166"
      def install
        bin.install "trdsql"
      end
    end
  end

  test do
    assert_equal "3\n", pipe_output("#{bin}/trdsql 'select count(*) from -'", "a\nb\nc\n")
  end
end
