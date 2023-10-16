class github-actions-test < Formula
  desc "Tools for executing SQL queries to CSV, LTSV, JSON and TBLN"
  homepage "https://github.com/noborus/github-actions-test/"
  version  "0.1.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noborus/github-actions-test/releases/download/v0.1.7/github-actions-test_v0.1.7_darwin_arm64.zip"
      sha256 "c98f694d9492f2781885fe9d2c137072ab29ad3897b260f2895cd164154b3156"
      def install
        bin.install "github-actions-test"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noborus/github-actions-test/releases/download/v0.1.7/github-actions-test_v0.1.7_darwin_amd64.zip"
      sha256 "370e464e9cb670dc2f033c1359203a53fb47fd7529165fc39973914baac5749c"
      def install
        bin.install "github-actions-test"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/github-actions-test/releases/download/v0.1.7/github-actions-test_v0.1.7_linux_arm64.zip"
      sha256 "447078b1d040c6c2b878c387eaa9f6f48a81205c1dac2c45f45262573ef59473"
      def install
        bin.install "github-actions-test"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/noborus/github-actions-test/releases/download/v0.1.7/github-actions-test_v0.1.7_linux_amd64.zip"
      sha256 "9c1873f448af8a44d04da7f5bc13c5e69f57498e9bf4f6e951373b6afb7aaccf"
      def install
        bin.install "github-actions-test"
      end
    end
  end

  test do
    assert_equal "3\n", pipe_output("#{bin}/github-actions-test 'select count(*) from -'", "a\nb\nc\n")
  end
end
