cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.42724-62ce333"
  sha256 arm: "9b9032a42688411d7f5702f0cd2d818f6d3ec63d1824fbc599518fea9c1fb4bf",
         intel: "920df7738ace0b2ae7ad5cef0ebdbc4a723efa642b3b334787e733e910def29e"

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
