cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.27394-25bb87d"
  sha256 arm: "ae8f74711d316d707c35e1dcce0c3772e61069cf6683b1439e9396a743df3aac",
         intel: "5ff9e2bf4e9e3e64dcf73dac8b0ad7409f9b8593b661f55a5ff11b5aa4577ab4"

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
