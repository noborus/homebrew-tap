class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV, JSON and TBLN"
  homepage "https://github.com/noborus/trdsql/"
  version  "0.12.1-rc1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noborus/trdsql/releases/download/v0.12.1-rc1/trdsql_v0.12.1-rc1_darwin_arm64.zip"
      sha256 "6499abd608f3db076e5f4df65d0174bc1950c43e6b422db3c4033f904d9a0c43"
      def install
        bin.install "trdsql"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v0.12.1-rc1/trdsql_v0.12.1-rc1_darwin_amd64.zip"
      sha256 "035daa99d93eb5111fa639e24e6b2efe27e2537fb360e3f110f08d2a3344a3d1"
      def install
        bin.install "trdsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/trdsql/releases/download/v0.12.1-rc1/trdsql_v0.12.1-rc1_linux_arm64.zip"
      sha256 "4f89daf1bdee40ca485a1d6046cf397a2de4642c470442ccda51ec9b41b010f0"
      def install
        bin.install "trdsql"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v0.12.1-rc1/trdsql_v0.12.1-rc1_linux_amd64.zip"
      sha256 "c93f48c53b42f9e4c7824d6bae98ec3d39491f1cd7fd6c8d77672ef8cad4f873"
      def install
        bin.install "trdsql"
      end
    end
  end

  test do
    assert_equal "3\n", pipe_output("#{bin}/trdsql 'select count(*) from -'", "a\nb\nc\n")
  end
end
