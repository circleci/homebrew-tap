cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.27308-8173211"
  sha256 arm: "fee91b29e342b0d0245e1f8f8bf990598558013b5ea6343d99e26de9e814b36d",
         intel: "7cb568f316d5c605ed434495f2e333b5c879dbe66317606a8ce63209b4c3fc2e"

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
