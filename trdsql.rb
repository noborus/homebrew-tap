class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV, JSON and TBLN"
  homepage "https://github.com/noborus/trdsql/"
  version  "0.12.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noborus/trdsql/releases/download/v0.12.1/trdsql_v0.12.1_darwin_arm64.zip"
      sha256 "2b58cc00843a8fc105b4befd3d5da7de78d27798bea8e128c45aa0a49cce82fb"
      def install
        bin.install "trdsql"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v0.12.1/trdsql_v0.12.1_darwin_amd64.zip"
      sha256 "2e2e3d88c5d91d20d1b27da6c0d1b0a03086fd2365daa492192df3b1a7dd3390"
      def install
        bin.install "trdsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/trdsql/releases/download/v0.12.1/trdsql_v0.12.1_linux_arm64.zip"
      sha256 "086e5121f35a46fabb0c16db1dd752826ee5d1a2b2f02a173dd5f69fa58602fc"
      def install
        bin.install "trdsql"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v0.12.1/trdsql_v0.12.1_linux_amd64.zip"
      sha256 "984709b03980c034e77a0ce353839280b132f1b3770547d4533eb37f89a4a4d5"
      def install
        bin.install "trdsql"
      end
    end
  end

  test do
    assert_equal "3\n", pipe_output("#{bin}/trdsql 'select count(*) from -'", "a\nb\nc\n")
  end
end
