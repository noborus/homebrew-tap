class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV and JSON"
  homepage "https://github.com/noborus/trdsql/"
  version "0.11.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noborus/trdsql/releases/download/v0.11.1/trdsql_v0.11.1_darwin_arm64.zip"
      sha256 "39899bba8adc676cbf6f0ff8462f8d3fd7a1226fe763fe6838491cf8b3a73540"
      def install
        bin.install "trdsql"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v0.11.1/trdsql_v0.11.1_darwin_amd64.zip"
      sha256 "8576bc95d10f316c065637947449ba31a6ae772ea189a7c97fc191e86b631dc0"
      def install
        bin.install "trdsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/trdsql/releases/download/v0.11.1/trdsql_v0.11.1_linux_arm64.zip"
      sha256 "64248921a40014750868684a22c9c91737948a81faf32ba2204c85c851a330db"
      def install
        bin.install "trdsql"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v0.11.1/trdsql_v0.11.1_linux_amd64.zip"
      sha256 "63ad3896475fdde166e1c569c69a99babfb12d417b4de38b104058783223eb13"
      def install
        bin.install "trdsql"
      end
    end
  end

  test do
    assert_equal "3\n", pipe_output("#{bin}/trdsql 'select count(*) from -'", "a\nb\nc\n")
  end
end
