cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.45418-c741cb7"
  sha256 arm: "b20a980afab244ffbd64f398ae1f4c44b08dabcd07783d59be15f94a2f7f8bc6",
         intel: "a34466c17e4a59fab9436f7939c63cdc0eeb2fbba0a0b245e6a9dc5864ef42e5"

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
