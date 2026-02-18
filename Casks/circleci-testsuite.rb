cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.21882-513cf74"
  sha256 arm: "cfb6fc2a5cc428c06192188466c3bfc0849728f83a4f31ed785399550a86e5f0",
         intel: "9873f82dc532dade6f07c6e84087eb7e270a4542c8b24b86503094d722816bad"

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
