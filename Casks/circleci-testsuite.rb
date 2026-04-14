cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.31071-ef17b31"
  sha256 arm: "820b894abff1c7c6b2af6c74316d4d1c167ae04a0d657e2356b3002ad5dd4ce0",
         intel: "c251c6a9734dd8ef755e2ec26e4b0b6572966546e3715ad23fc882e47f44fc04"

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
