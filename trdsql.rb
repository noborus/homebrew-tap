class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV, JSON and TBLN"
  homepage "https://github.com/noborus/trdsql/"
  version  "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noborus/trdsql/releases/download/v1.0.0/trdsql_v1.0.0_darwin_arm64.zip"
      sha256 "305f065a62669dcd8af9a3f3d18cd2355b9b9675df5005e9ff08d1e6ebe92ede"
      def install
        bin.install "trdsql"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v1.0.0/trdsql_v1.0.0_darwin_amd64.zip"
      sha256 "f09360493c40ec01192680409879efd0383cd93b8f9cb0e4408fd15016ce6fc4"
      def install
        bin.install "trdsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/trdsql/releases/download/v1.0.0/trdsql_v1.0.0_linux_arm64.zip"
      sha256 "a84150d615e37aba73e74f76f65001b93924770656da13b75fd3d1517aece1c1"
      def install
        bin.install "trdsql"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v1.0.0/trdsql_v1.0.0_linux_amd64.zip"
      sha256 "5a45cf8abacc80d5c77ff50fd4616f70d328709204571fdad74a1b01a9554252"
      def install
        bin.install "trdsql"
      end
    end
  end

  test do
    assert_equal "3\n", pipe_output("#{bin}/trdsql 'select count(*) from -'", "a\nb\nc\n")
  end
end
