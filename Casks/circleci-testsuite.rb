cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.23451-dfa286a"
  sha256 arm: "19c2d259766424a1cdbf7e6185fde5f5252c1bdaa9c17547dd75b0e537e34596",
         intel: "3733c8b7532e9270cf7fa96f086c61136328175eceef8ab0d7fba6b5ee9583ac"

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
