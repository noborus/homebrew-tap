class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV and JSON"
  homepage "https://github.com/noborus/trdsql/"
  version "0.10.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noborus/trdsql/releases/download/v0.10.1/trdsql_v0.10.1_darwin_arm64.zip"
      sha256 "52c1dbfd22c87f6c64d3b70249f193d601f02c280191aced6201a4643fa7d57e"
      def install
        bin.install "trdsql"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v0.10.1/trdsql_v0.10.1_darwin_amd64.zip"
      sha256 "c2d78a1e2d14e5ddec598e2b9ca44a5cb8beea3196a74b8771eabce40424e650"
      def install
        bin.install "trdsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/trdsql/releases/download/v0.10.1/trdsql_v0.10.1_linux_arm64.zip"
      sha256 "8fc8dbf7e0fe548c9d18e3501c47de5cbf0d3cb68ec7e6ca8a926aedc40e9617"
      def install
        bin.install "trdsql"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v0.10.1/trdsql_v0.10.1_linux_amd64.zip"
      sha256 "997d79bbaec9a5eeb9928f12f1098674982715476e11d1614dbbc1a8a405b083"
      def install
        bin.install "trdsql"
      end
    end
  end

  test do
    assert_equal "3\n", pipe_output("#{bin}/trdsql 'select count(*) from -'", "a\nb\nc\n")
  end
end
