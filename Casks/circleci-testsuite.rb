cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.21676-5f61678"
  sha256 arm: "7d44cd4863c36f43c6ce527539941a5f1dd7a8c31e6ecda7085958f35bb618e8",
         intel: "9ba540d6538984b35bcc95492d5236216872e18120435ee5adf3820b8c2e74c8"

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
