class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV, JSON and TBLN"
  homepage "https://github.com/noborus/trdsql/"
  version  "0.13.0-rc8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noborus/trdsql/releases/download/v0.13.0-rc8/trdsql_v0.13.0-rc8_darwin_arm64.zip"
      sha256 "3a0d642c80f88a696ae539ad7a30faf16c736bcdd8c9613bb148831049f08242"
      def install
        bin.install "trdsql"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v0.13.0-rc8/trdsql_v0.13.0-rc8_darwin_amd64.zip"
      sha256 "64d392217f36b083a1eeda23c21004b1c1cd730f58e66726a79c37ad077ccd4d"
      def install
        bin.install "trdsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/trdsql/releases/download/v0.13.0-rc8/trdsql_v0.13.0-rc8_linux_arm64.zip"
      sha256 "2ad1283b55be9e9c6d58ce4fb4180818d81dd2ee12b589788366f0898ae16545"
      def install
        bin.install "trdsql"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v0.13.0-rc8/trdsql_v0.13.0-rc8_linux_amd64.zip"
      sha256 "29ac789dce3a01dcf7dc3cc832b74a645ffa617ebb62e28f16c04d1c31d29e30"
      def install
        bin.install "trdsql"
      end
    end
  end

  test do
    assert_equal "3\n", pipe_output("#{bin}/trdsql 'select count(*) from -'", "a\nb\nc\n")
  end
end
