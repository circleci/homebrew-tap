cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.39702-c5e3226"
  sha256 arm: "9dc5090983a356920343ce5b35973e37a1e8801ee27a2d933e5fc2ddbd8b3c3e",
         intel: "5e813d0c0c74c981d4ce822ef6283d16094b4d50c96dc1293567f9a8a2b58f96"

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
