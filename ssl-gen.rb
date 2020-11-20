require 'rbconfig'
class SslGen < Formula
  desc ""
  homepage "https://github.com/ashsmith/ssl-gen"
  version "1.0.0"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/ashsmith/ssl-gen/releases/download/v1.0.0/ssl-gen_1.0.0_darwin_amd64.zip"
      sha256 "f4c35b67f49905388e7ed4a91f8705fcdb9ef2d1f587c2078f3413aa38ed2e83"
    when /linux/
      url "https://github.com/ashsmith/ssl-gen/releases/download/v1.0.0/ssl-gen_1.0.0_linux_amd64.tar.gz"
      sha256 "d5c1dead01edde9461e4eb58c55ad7717aad0bedb789ee7db4e2301aafcb8612"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  else
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/ashsmith/ssl-gen/releases/download/v1.0.0/ssl-gen_1.0.0_darwin_386.zip"
      sha256 "ddd14e858d3c579d18fd8bbf63556c81a48e2a0f3bd60839db41c2944830b5e5"
    when /linux/
      url "https://github.com/ashsmith/ssl-gen/releases/download/v1.0.0/ssl-gen_1.0.0_linux_386.tar.gz"
      sha256 "fc88b9833a671bc030a5e37177c3b4420990e5c10de3d24dd424b0af903fffc9"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  end

  def install
    bin.install "ssl-gen"
  end

  test do
    system "ssl-gen"
  end

end
