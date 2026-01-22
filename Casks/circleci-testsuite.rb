cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.19606-3b0b989"
  sha256 arm: "58eae1ebbb6bb633f0f6f9233dc68e9120a116b28abbdb0ba1c67c7e3d68ba8f",
         intel: "a05816ac015a4b05edb2cfe5a0c1185b1049eb7f70e006d3559d7769a9a7686f"

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
