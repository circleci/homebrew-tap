cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.23155-86da4ea"
  sha256 arm: "47db26d64ca02b365e2f17285b0bfcec4e0f45fb35f1fa9b105f3714b3bddb4d",
         intel: "20c791de2d9fca1b49e0d4a535f97826abc7b3a9d911204591fc3ed45155af10"

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
