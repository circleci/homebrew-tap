cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.31563-033d71b"
  sha256 arm: "d61ae68a3b80ebd7fd80d7e3b6b116aee677d86fb9b5ab3d7af73f7e1a0f2f0e",
         intel: "b6dbe664a8756c9b4f772f466dd4cefa09ad2e9d703db5c2b02316624a62af10"

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
