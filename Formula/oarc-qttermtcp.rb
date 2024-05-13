# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class OarcQttermtcp < Formula
  desc "QtTermTCP via OARC repository."
  homepage ""
  url "https://github.com/Online-Amateur-Radio-Club-M0OUK/oarc-qttermtcp/archive/14657a895ce46ef2ae8c9ccf7774a6f4b5231d7f.zip"
  version "0.0.0.73"
  sha256 "fa746bd972263e61c4d8a4582bc9f0751dcee57bfb0ba1372d735e9911afb511"
  license "GPL-3.0-or-later"

  depends_on "qt5" => :build

  def install
    # Remove unrecognized options if they cause configure to fail
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", "--disable-silent-rules", *std_configure_args
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "qmake", "QtTermTCP.pro"
    system "make"
    bin.install "QtTermTCP.app/Contents/MacOS/QtTermTCP"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test oarc-qttermtcp`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
