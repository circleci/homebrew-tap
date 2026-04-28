cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.33752-7f4c1f3"
  sha256 arm: "de755c8a8810bee9c40867252ff30a7faef7b08debc839ef067bb039cb0e2e04",
         intel: "74618678f2cd5090128bfb9b3e0adaa06bbe88a070f8b2f177d1abfbafcbef4f"

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
