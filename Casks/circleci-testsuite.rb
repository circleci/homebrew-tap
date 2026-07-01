cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.44765-56df376"
  sha256 arm: "8a5d4fd88cd8fad8a27ecd5a5f642e1b4c6cf39c0a85e6063cce784902a5769a",
         intel: "5f2ceb726139879e580e67833da5e9b40f7967dd5449e24534370d859287db71"

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
