cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.46709-2035517"
  sha256 arm: "cf8c9bbcd9a41234e6500d093ab3584f0d9903a76e5f958225fd1094db0a0fe1",
         intel: "55d140c72abc91f2e9eb18a36c165cbe6c41d3f3c2d1d3008931d5d2f0fcddf7"

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
