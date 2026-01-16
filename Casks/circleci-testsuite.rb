cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.18785-dev-0dc5fb3"
  sha256 arm: "1dd4c2eda28079649e1e3f5f2d1c8eb4c721098a99649dbeafb64a72a71548d8",
         intel: "022d379033aac010c2dbb8e784c5785f8214b284b67158c69cb839bd3345dd0e"

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
