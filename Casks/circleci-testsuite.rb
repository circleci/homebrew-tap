cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.20220-39fee3b"
  sha256 arm: "45a5cc96bd890858466ef566beb013a9e6d9fd121e701857803a6a56f93548d9",
         intel: "565dd11bdbb574afe56ca2e6b8c8a3f3cab574f8a5ad1e3750baa23122eb7693"

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
