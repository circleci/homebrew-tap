cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.24498-e143316"
  sha256 arm: "67aa20ca21f0e404edd0a8b235fb79144013f81a74ca195e7e8beb0c5f801d08",
         intel: "be3889f3177296650107a25729c0ee73a447042d13bda3a93160aa6ef9ebeba9"

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
