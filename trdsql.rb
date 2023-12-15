class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV, JSON and TBLN"
  homepage "https://github.com/noborus/trdsql/"
  version  "0.20.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noborus/trdsql/releases/download/v0.20.0/trdsql_v0.20.0_darwin_arm64.zip"
      sha256 "92aaa507881cb0eb5cc15afe17a6ceddb0384bb45ab459bad3d7996b925761d3"
      def install
        bin.install "trdsql"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v0.20.0/trdsql_v0.20.0_darwin_amd64.zip"
      sha256 "074e38f985430b6227fa58032ada8e999006f328ac6ff71ace36f5275f045906"
      def install
        bin.install "trdsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/trdsql/releases/download/v0.20.0/trdsql_v0.20.0_linux_arm64.zip"
      sha256 "f5dcde015b123ad131825da5eb78e2edc3481a64cfff9b660bc89e940ac650bb"
      def install
        bin.install "trdsql"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v0.20.0/trdsql_v0.20.0_linux_amd64.zip"
      sha256 "57b48e18daeba40e0bc0f6c7367a61263db5d0ac88cb1418002fc8866cb308e6"
      def install
        bin.install "trdsql"
      end
    end
  end

  test do
    assert_equal "3\n", pipe_output("#{bin}/trdsql 'select count(*) from -'", "a\nb\nc\n")
  end
end
