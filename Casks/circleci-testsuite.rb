cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.43042-09c7d15"
  sha256 arm: "224ff458c50314e7b475934c0a06b4ab33b75674e2d785e8e2c5ae6897e03bed",
         intel: "d6f9e6383360a96dfb989934745509e8b00a0c2f6616f614b6aa19cc821fdf44"

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
