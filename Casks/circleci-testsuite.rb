cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.44555-9dfb9c8"
  sha256 arm: "628d337750557b5b5064e6141a39b0af335f42abfcc3b080171cd88a4f78d236",
         intel: "e1b06ef779383a5c324bf6c2edc093827528733540fe6de9314caf3abba2578d"

  url "https://circleci-binary-releases.s3.amazonaws.com/circleci-cli-plugins/circleci-testsuite/#{version}/darwin/#{arch}/circleci-testsuite.gz"
  name "CircleCI TestSuite Plugin"
  desc "Plugin for circleci-cli that runs adaptive-testing test suites"
  homepage "https://circleci.com"

  livecheck do
    url :url
    regex(/^\d+(?:\.\d+)+-[0-9a-fA-F]$/i)
  end

  container type: :gzip

  binary "circleci-testsuite"

  # No zap stanza required
end
