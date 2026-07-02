cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.44882-e641355"
  sha256 arm: "a1de7ec4b5178837744cffbed2c2c2116940e8027a94351a16b2705ce29d0624",
         intel: "539f3962cea9420c06bc29661dbf7811ede186c7f8e63106e0f8b79be46d358f"

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
