cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.37153-edc660f"
  sha256 arm: "cafc31285217213f0301d0e9a05b3dff7a595bb9e19110cb8534f6acadd836fe",
         intel: "9175674582a7541c506cba0a0d6a051574c2fa191f72e73dd815ebd8942a07d2"

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
