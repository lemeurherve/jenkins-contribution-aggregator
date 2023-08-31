# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class JenkinsTopSubmitters < Formula
  desc "Jenkins Submitter Pivot Table analyzer."
  homepage "https://github.com/jmMeessen/jenkins-top-submitters"
  version "1.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jmMeessen/jenkins-top-submitters/releases/download/v1.2.1/jenkins-top-submitters_1.2.1_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "28f225535cc316f2810945ca059897be50ec646b4a3efa705b6f17bf2c5d9e22"

      def install
        bin.install "jenkins-top-submitters"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jmMeessen/jenkins-top-submitters/releases/download/v1.2.1/jenkins-top-submitters_1.2.1_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9b724a5217d68250b0de022449fcec3b8a1ede4bfd99d1cefee705fb09da5b10"

      def install
        bin.install "jenkins-top-submitters"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/jmMeessen/jenkins-top-submitters/releases/download/v1.2.1/jenkins-top-submitters_1.2.1_linux_armv6.tar.gz", using: CurlDownloadStrategy
      sha256 "863d46c5ed2f20fbc963bce6250b86ccbd5f73a9bb31daee8797063adff9d7c9"

      def install
        bin.install "jenkins-top-submitters"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jmMeessen/jenkins-top-submitters/releases/download/v1.2.1/jenkins-top-submitters_1.2.1_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "03e4feda419f0cd7fc01efa46cfc96ea008c33638c1395363f86d0b05a57e349"

      def install
        bin.install "jenkins-top-submitters"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jmMeessen/jenkins-top-submitters/releases/download/v1.2.1/jenkins-top-submitters_1.2.1_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9e783a74adea9704b28be8c73a53aaf0cea4a8436f320c7b82860ee490eb4f4a"

      def install
        bin.install "jenkins-top-submitters"
      end
    end
  end

  test do
    system "#{bin}/jenkins-top-submitters version -d"
  end
end
