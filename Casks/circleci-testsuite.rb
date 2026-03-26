cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.28784-b624cf3"
  sha256 arm: "94f6c4b22d2d2489b4dcc7d7d1bf6f85af895ef9ccf40417816a17f992850991",
         intel: "ff229663d72291e6a5fb0e03c095c5d6f9d3c82f1ef6e84e5b9c893f5f0e1521"

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
