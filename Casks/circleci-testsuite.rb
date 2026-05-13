cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.36156-2452999"
  sha256 arm: "9d4df6d896d1281ed42e6ae9ee01248a828ac65325947b213e4aa2c7a07d2a0b",
         intel: "153e264a698df2670bcd17eace7f400ecc8cffee97ac6b61e05207526cac6249"

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
