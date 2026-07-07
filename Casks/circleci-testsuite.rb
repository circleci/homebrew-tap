cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.45628-b47a9d8"
  sha256 arm: "0813cb5df604ab0933da5c1b3adc87951068fd4569db3efb79e7129b63cd9677",
         intel: "1140d8bbe2db1f382c81f945e4d2ee1a57372a5b63c4a7c8aed483f2f7c7a68c"

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
