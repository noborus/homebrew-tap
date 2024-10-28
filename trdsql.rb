class Trdsql < Formula
  desc "Tools for executing SQL queries to CSV, LTSV, JSON and TBLN"
  homepage "https://github.com/noborus/trdsql/"
  version  "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noborus/trdsql/releases/download/v1.1.0/trdsql_v1.1.0_darwin_arm64.zip"
      sha256 "bdda73e8b0f654db395653cf482751a1df7b5a35e904820e540da7bad8b3b104"
      def install
        bin.install "trdsql"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v1.1.0/trdsql_v1.1.0_darwin_amd64.zip"
      sha256 "8b5ebf62b816f07a7d7cb1df43beb870ba33e653a55f83d56a6596392e9f3ef3"
      def install
        bin.install "trdsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noborus/trdsql/releases/download/v1.1.0/trdsql_v1.1.0_linux_arm64.zip"
      sha256 "1fb405949fa67339dec8ff044b99954cdba84770a65a2c5cf951461f6e26ab21"
      def install
        bin.install "trdsql"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/noborus/trdsql/releases/download/v1.1.0/trdsql_v1.1.0_linux_amd64.zip"
      sha256 "effccd13b0533840334149028364f5f99223b7b2484050d80f4f3d2331fed73d"
      def install
        bin.install "trdsql"
      end
    end
  end

  test do
    assert_equal "3\n", pipe_output("#{bin}/trdsql 'select count(*) from -'", "a\nb\nc\n")
  end
end
