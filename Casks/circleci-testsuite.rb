cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.20129-576d014"
  sha256 arm: "a2b0a6cc84fd53705e4b625be9be9439be520b8681bb1577f61f1950250b83ce",
         intel: "08278eae41e5c7e8fec00a0b83a8107ce14710aa116a84eaaf77c4f3bd8c02f4"

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
