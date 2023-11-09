class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV, JSON and TBLN"
  homepage "https://github.com/noborus/trdsql/"
  version  "0.13.0-rc11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noborus/trdsql/releases/download/v0.13.0-rc11/trdsql_v0.13.0-rc11_darwin_arm64.zip"
      sha256 "a8219c6c3be3c4f84c9752d2bf012581c793d867948e7b4ae110461a886a1d37"
      def install
        bin.install "trdsql"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v0.13.0-rc11/trdsql_v0.13.0-rc11_darwin_amd64.zip"
      sha256 "3e589a20c646b22beb272c0ab31fd6d146dd28e143eb3f5bdf559cdc3f382cc2"
      def install
        bin.install "trdsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/trdsql/releases/download/v0.13.0-rc11/trdsql_v0.13.0-rc11_linux_arm64.zip"
      sha256 "d8425af2a7e62a73bf93ed91221083437a6dbbcda935c1cb235d437fa28d539d"
      def install
        bin.install "trdsql"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v0.13.0-rc11/trdsql_v0.13.0-rc11_linux_amd64.zip"
      sha256 "914f7224f00119cd2c49aa0d6f3f3c77cad28266db5ef89c4fe8f2d3b0dc5b37"
      def install
        bin.install "trdsql"
      end
    end
  end

  test do
    assert_equal "3\n", pipe_output("#{bin}/trdsql 'select count(*) from -'", "a\nb\nc\n")
  end
end
