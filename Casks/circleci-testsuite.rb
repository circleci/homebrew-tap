cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.31491-5537e8e"
  sha256 arm: "9c6fb5610d9061c735122c18a0444da979d91d2f9c462a69ea92dfc75a7cb3e9",
         intel: "feda0f49563014274d29d262cc8b33209aef0733fa53e847a476bf7dd254826f"

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
