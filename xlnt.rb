class Xlnt < Formula
  desc "user-friendly xlsx library for C++14"
  homepage "https://github.com/tfussell/xlnt"
  url "https://github.com/tfussell/xlnt/releases/download/v0.9.0/xlnt-v0.9.0-osx.zip"
  version "0.9.0"
  sha256 "9311d5d31691ba4aa7f2f0ce3475b4115c5e772b33d0ce11253fc14d5fd53673"

  depends_on "cmake" => :build

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "-C", "build", "install"
  end
end
