cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.43510-f73dd66"
  sha256 arm: "533bbb24d4ed438822e7600730c8d725c0f22b0d74eaa456354f757ffff968f5",
         intel: "930bbbdf25e02419bf36c509588bd1b7c49fae0873988c676ee65c09f2bdb9cf"

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
