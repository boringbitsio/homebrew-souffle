class Souffle < Formula
  desc "Translator of declarative Datalog programs into the C++ language."
  homepage "https://github.com/souffle-lang/souffle/wiki"
  url "https://dl.bintray.com/souffle-lang/osx/*.pkg"
  sha256 ""

  depends_on "libtool" => :build
  depends_on "bison" => :build
  depends_on "md5sha1sum" => :build
  depends_on "autoconf" => :build
  depends_on "automake" => :build

  def install
    system "./configure", "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "false"
  end
end
