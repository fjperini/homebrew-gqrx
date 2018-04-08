require 'formula'

class Gqrx < Formula
  homepage 'https://github.com/csete/gqrx'
  url 'https://github.com/csete/gqrx/archive/v2.11.2.tar.gz'
  sha256 '28e2caea283027d58719e6ea8211462694d25816a37a510303d51af45decfcb3'
  head 'https://github.com/csete/gqrx.git'

  depends_on 'cmake'
  depends_on 'pkg-config'
  depends_on 'qt5'
  depends_on 'boost'
  depends_on 'ttrftech/gnuradio/gnuradio'
  depends_on 'ttrftech/gnuradio/gr-osmosdr'
  depends_on 'ttrftech/gnuradio/gr-iqbal'

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
