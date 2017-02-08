require 'formula'

class Gqrx < Formula
  homepage 'https://github.com/csete/gqrx'
  url 'https://github.com/csete/gqrx/archive/v2.6.tar.gz'
  sha256 '53d25db8d987a41ccccaf6fd85262bd7770cdfab5539b5901c4558756483c9db'
  head 'https://github.com/csete/gqrx.git'

  depends_on 'cmake'
  depends_on 'pkg-config'
  depends_on 'qt5'
  depends_on 'boost'
  depends_on 'gnuradio'
  depends_on 'gr-osmosdr'
  depends_on 'gr-iqbal'

  def install
    args = "PREFIX=#{prefix}"
    mkdir "build" do
      args = std_cmake_args
      system 'cmake', '..', *args
      system 'make'
      system 'make install'
      #system "qmake",  *args, ".."
      #system "make"
    end
    #Dir.glob("build/*.app") { |app| mv app, prefix }
  end
end
