cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.29697-d6a814e"
  sha256 arm: "39ce0855eded2e0dadd62fefbee07af197701c1aa5d7fd3b67493377094e9ad9",
         intel: "810242f38081ef691b9da7c6cf5857aa5f942d63389250a46fb13e27f101ca10"

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
