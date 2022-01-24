class Libirecovery < Formula
    desc "The libirecovery library allows communication with iBoot/iBSS of iOS devices via USB."
    homepage "https://github.com/libimobiledevice/libirecovery"
    url "https://github.com/libimobiledevice/libirecovery.git"
    version "git0"
  
    depends_on "autoconf" => :build
    depends_on "automake" => :build
    depends_on "libtool" => :build
    depends_on "libplist"
    depends_on "libusb"
    depends_on "libimobiledevice-glue-1.0"
  
    def install
      system "./autogen.sh", "--disable-debug",
                            "--disable-dependency-tracking",
                            "--disable-silent-rules",
                            "--prefix=#{prefix}"
      system "make"
      system "make", "install"
    end
  end