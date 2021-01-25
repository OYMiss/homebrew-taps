# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class TinyPress < Formula
  desc "A tiny static blog generator."
  homepage "https://github.com/OYMiss/tiny-press"
  url "https://github.com/OYMiss/tiny-press/archive/v0.1.tar.gz"
  sha256 "7ea083f51bef7777c80ac7eff99fe34eb40536576c6f59c21920a3146cae100a"
  license ""
  bottle do
    root_url "https://github.com/OYMiss/tiny-press/releases/download/v0.1"
    sha256 "b658c3caff8473e1ad81a572a04c89386621a29c690c8b5f18944e13da36a62f" => :catalina
  end

  depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test tiny-press`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end
