class CssAnalyzer < Formula
    desc "Analyzes CSS selector usage across HTML, PHP, and JS files"
    homepage "https://github.com/chasepants/css-analyzer"
    url "https://github.com/chasepants/css-analyzer/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "547d0e5b18410a6066ae3df0add8d8bde2c4787b5617c99677a69a3ec0fbc8d9"
    license "MIT"
  
    depends_on "python@3.12"
  
    def install
      system "python3", "-m", "pip", "install", ".", "--prefix=#{prefix}"
    end
  
    test do
      system "#{bin}/css-analyzer", "--help"
    end
  end