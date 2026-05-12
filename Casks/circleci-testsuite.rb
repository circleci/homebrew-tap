cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.35874-3e40dd5"
  sha256 arm: "9826afe82be5d2f0cc8c414ea5c4d3460150ab5f62e63beccb6e9277a349adf5",
         intel: "63cc3d2bab4fad1cfb3af02f96f25c2f546da724f5c681110a07ada3b5fefb47"

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
