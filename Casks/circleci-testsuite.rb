cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.19477-44c6381"
  sha256 arm: "9a8b7c40f6385ec8a624f3eac3ee6b209081c998fafa2573b1aa9e948d4ec1e9",
         intel: "437ad6c1c5c4982cfc7866aed5970fcb33e8ce1e27348b6493b34ca6598d4171"

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
