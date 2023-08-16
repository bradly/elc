class Elc < Formula
  desc       'Edit Last Command Output'
  homepage   'https://github.com/bradly/elc'
  depends_on 'fpp' => :recommended
  url        'https://raw.githubusercontent.com/bradly/elc/main/dist/elc-0.9.0.tar.gz'
  sha256     '75f880fd5583073b8603909d627e2de9b3cef9c007e5a0dfe831249308f9ce07'
  option     'without-fpp', 'Do not install fpp'

  def install
    bin.install 'elc.sh' => 'elc'
    man1.install 'docs/elc.1'
  end
end
