cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.42200-35a1efa"
  sha256 arm: "ae15acbbb5a0b58a9ddf4bcef45504f187c5dc49252048ac62b7b4538a6239ea",
         intel: "6973aa9f289b1aff80b805f271aa9656d828bead0a4b717ceec2ca9a927e595e"

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
