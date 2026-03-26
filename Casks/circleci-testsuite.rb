cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.28608-e5147ee"
  sha256 arm: "3f71fef9be68640adc4f51d5c5beddc920991ff8ad54ec38e76568d451470b6a",
         intel: "8a73d5b0e2dc57ccfd8da11e938ab8b40b03104bed140e6b275a2125bdb93cb4"

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
