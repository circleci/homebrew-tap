cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.43392-74a27c0"
  sha256 arm: "b87136b73bf551a98af3e76fec7344270037ae7af994b6e5765acac4b38f5eb3",
         intel: "b72a74925abeff5b95fc064cfa1f9046f1eeae1ea47de3254174f3b10f4bc2cb"

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
