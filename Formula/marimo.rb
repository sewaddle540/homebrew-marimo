class Marimo < Formula
    desc "A command-line tool for managing and growing digital marimo moss balls"
    homepage "https://github.com/sewaddle540/marimo"
    url "https://github.com/sewaddle540/marimo/archive/v1.0.tar.gz"
    sha256 "114fe1d2c9a605c61917f3141d4038cf4e4ec008a04dcb947d107e8d2b0fe141"
    license "MIT"
  
    depends_on "zsh"
  
    def install
      bin.install "marimo" 
      man1.install "marimo.1" 
  

#      if ENV["LANG"].to_s.start_with?("ja")
#        man1.install "marimo.1.ja" => "marimo.1"
#      end
    end
  
    test do

      system "#{bin}/marimo", "-wq"
    end
  end
  
