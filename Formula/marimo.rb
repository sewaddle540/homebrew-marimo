class Marimo < Formula
    desc "A command-line tool for managing and growing digital marimo moss balls"
    homepage "https://github.com/sewaddle540/marimo"
    url "https://github.com/sewaddle540/marimo/archive/v1.0.tar.gz"
    sha256 "1027c9859588526a4f8bdccd22ba5353fe5a230e66db4cb9a0052b8bdcf26c07"
    license "MIT"
  
    depends_on "zsh"
  
    def install
      bin.install "marimo" 
      man1.install "marimo.1" 
  

#      if ENV["LANG"].to_s.start_with?("ja")
#        man1.install "marimo.1.ja" => "marimo.1"
#      end
#    end
  
    test do

      system "#{bin}/marimo", "-wq"
    end
  end
  