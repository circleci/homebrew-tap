cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.26067-af03720"
  sha256 arm: "fa4723c2433aa0610079fdfeb03c6144643a9032879405be012cb5fd6e5e8e60",
         intel: "c6ba9939232f9ef65fd5a58d721d0618932ec775473a79660533ed4ce39a4916"

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
