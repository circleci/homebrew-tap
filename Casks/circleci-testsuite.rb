cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.39637-b4342de"
  sha256 arm: "9840fec09c1518f63a4f103814137ea7e93926fb70b5e78853cf84cada881ce3",
         intel: "6cede23119fb0b389c0b07aa96537bb41fb79fec381a35f0c05058f3be059893"

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
