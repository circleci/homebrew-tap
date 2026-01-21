cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.19449-9905bba"
  sha256 arm: "d4e896f6465840ee0854312ff16f83de6a8a8d9ab0d70b511edbdad6d9b645e5",
         intel: "24a1c4c0be22a344589589b4de4141901735a5ec1c69e1c5ca894b72563c0bfa"

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
