cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.38544-a591d36"
  sha256 arm: "50f6ffef96301fe0691c5411a8ee04454deda9eda466c11278e53e3b280ac3de",
         intel: "a675a9cd1b42355eb74f7e4c1d3ba74a1a01c09469b9b69e8d5a289470e67129"

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
