class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV and JSON"
  homepage "https://github.com/noborus/trdsql/"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noborus/trdsql/releases/download/v0.12.0/trdsql_v0.12.0_darwin_amd64.zip"
      sha256 "fa033118104e50989a52d004e42b0f4eb9936b317dc650322732c254a8b6c9a2"
      def install
        bin.install "trdsql"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v0.12.0/trdsql_v0.12.0_darwin_amd64.zip"
      sha256 "977c8652f8cdd6868d68d25dd84e16f519e8e628c9183937b5cb66dadc840e5a"
      def install
        bin.install "trdsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/trdsql/releases/download/v0.12.0/trdsql_v0.12.0_linux_arm64.zip"
      sha256 "7707f718f5618da4cf7e28966d85aadb7d0053aa18d9d39082f49d21325d8cec"
      def install
        bin.install "trdsql"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v0.12.0/trdsql_v0.12.0_linux_amd64.zip"
      sha256 "cb71d601a575f67f5cbf0f891e2722f5f004e81b7206856ac747b59e3417000c"
      def install
        bin.install "trdsql"
      end
    end
  end

  test do
    assert_equal "3\n", pipe_output("#{bin}/trdsql 'select count(*) from -'", "a\nb\nc\n")
  end
end
