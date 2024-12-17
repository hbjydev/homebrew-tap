class Atfile < Formula
  desc "📦➔🦋 Store and retrieve files on the ATmosphere"
  homepage "https://github.com/ziodotsh/atfile"
  url "https://github.com/ziodotsh/atfile/releases/download/v%2F0.x%2F0.10.7/atfile-0.10.7.sh"
  version "0.10.7"
  sha256 "5154981de0a0688a2830ff376d83e3192220fb49b80b79f9e06adafcb4c97115"
  license "MIT"

  depends_on "jq"
  on_macos do
    depends_on "coreutils"  # need gnu coreutils on mac for md5 utils
  end

  depends_on "exiftool" => :recommended
  depends_on "mediainfo" => :recommended
  depends_on "websocat" => :recommended

  def install
    bin.install "atfile-0.10.7.sh" => "atfile"
  end

  test do
    system "false"
  end
end
