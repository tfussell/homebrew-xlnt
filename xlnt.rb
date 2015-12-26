class Xlnt < Formula
  desc "user-friendly xlsx library for C++14"
  homepage "https://github.com/tfussell/xlnt"
  url "https://github.com/tfussell/xlnt/archive/v0.9.0.zip"
  version "0.9.0"
  sha256 "f926269bcc7044e2378ced8bd55d8a5429e2c9759661db5510a72eff38ee4cf8"

  depends_on "cmake" => :build

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "-C", "build", "install"
  end
end
