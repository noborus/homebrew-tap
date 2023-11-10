class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV, JSON and TBLN"
  homepage "https://github.com/noborus/trdsql/"
  version  "0.13.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noborus/trdsql/releases/download/v0.13.0/trdsql_v0.13.0_darwin_arm64.zip"
      sha256 "890bacdc21d4c59cbb31bce062f364738b6b81f2a2eb65757ee85631a9e9ef7f"
      def install
        bin.install "trdsql"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v0.13.0/trdsql_v0.13.0_darwin_amd64.zip"
      sha256 "88324d1fb2427debf95866f3722a59c2e54c925a3ef7fba95aeface2eb4b0d1c"
      def install
        bin.install "trdsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/trdsql/releases/download/v0.13.0/trdsql_v0.13.0_linux_arm64.zip"
      sha256 "6a3c771e805356cc0b35c8d692dc3ff77bb85db1a0cc51fe09dbb14b85188996"
      def install
        bin.install "trdsql"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v0.13.0/trdsql_v0.13.0_linux_amd64.zip"
      sha256 "94051dccd690a4fe6a1344563678d68503376d80a4a7c3a4c4a495b3b1f956f3"
      def install
        bin.install "trdsql"
      end
    end
  end

  test do
    assert_equal "3\n", pipe_output("#{bin}/trdsql 'select count(*) from -'", "a\nb\nc\n")
  end
end
