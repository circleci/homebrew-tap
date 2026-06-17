cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.41946-a2110b3"
  sha256 arm: "324a48f081859dfb1db2f255972b00ef5fa685ed35fb1f7b92b7ae43f8f7c12a",
         intel: "a22120371290fec904153a472030ec118412140e0664884eda2cd261c9379cc4"

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
