cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.28633-ed11ce2"
  sha256 arm: "e151441cb20bc0f3c04946064d9beb8a43d886e70e706659f2b26af966052e3b",
         intel: "67026e209e23a2a015fabd21838d1fcb2ef5ede98c68a61b3071f7cac230a859"

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
