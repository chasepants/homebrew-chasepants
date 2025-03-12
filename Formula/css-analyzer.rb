class CssAnalyzer < Formula
    desc "Analyzes CSS selector usage across HTML, PHP, and JS files"
    homepage "https://github.com/chasepants/css-analyzer"
    url "https://github.com/chasepants/css-analyzer/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "1eadaf8d857a9f5864b43e16da8b33b9e06387715cddf50d56743293d93b20d1"
    license "MIT"
  
    depends_on "python@3.12"
  
    def install
      system "python3", "-m", "pip", "install", ".", "--prefix=#{prefix}"
    end
  
    test do
      system "#{bin}/css-analyzer", "--help"
    end
  end