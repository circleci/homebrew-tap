cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.28098-4a06a74"
  sha256 arm: "907906c2b0a9a4dfbcfa068b6e646fe0b02f0b014a2aa78dd03dce72b20a5e15",
         intel: "8fbb121928f3d88d5d841c5421e5fb833cf7dc5ac3e082fd18f070909b0a6c7c"

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
