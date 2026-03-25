cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.28017-0b583f4"
  sha256 arm: "fc94ad4862c8fbd334c5e7014db8d9dd37f4368d3a10b512b78c15cc01ad34fb",
         intel: "badc3f58f0c8d477d3cd6ce2f3a4bc6eacec96f3b3db5467a3c57aa64cae72fc"

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
