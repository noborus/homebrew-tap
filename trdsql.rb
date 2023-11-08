class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV, JSON and TBLN"
  homepage "https://github.com/noborus/trdsql/"
  version  "0.13.0-rc7"

  on_macos do
    if Hardware::CPU.arm?
      url ""
      sha256 ""
      def install
        bin.install "trdsql"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v0.13.0-rc7/trdsql_v0.13.0-rc7_darwin_amd64.zip"
      sha256 "272f78cd02f8706a227035981c6f456f876c9426da2743cde939c5740eb3f227"
      def install
        bin.install "trdsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/trdsql/releases/download/v0.13.0-rc7/trdsql_v0.13.0-rc7_linux_arm64.zip"
      sha256 "be2ec32603790b145c816b5a96e11decc4e97ef8aa5cc21a6015eeb03def5e65"
      def install
        bin.install "trdsql"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v0.13.0-rc7/trdsql_v0.13.0-rc7_linux_amd64.zip"
      sha256 "a7317da6cc907c6af4b04c31060ececb16d4459a8d42048790e8b793bff6fab1"
      def install
        bin.install "trdsql"
      end
    end
  end

  test do
    assert_equal "3\n", pipe_output("#{bin}/trdsql 'select count(*) from -'", "a\nb\nc\n")
  end
end
