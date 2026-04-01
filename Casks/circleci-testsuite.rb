cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.29914-190513f"
  sha256 arm: "f1b8b069322828b5e61ddf1911be40dac45ea0cd30cb06ea67b8debab022b7f4",
         intel: "074dbe1e4cc39e5ce37358baf965e3110627b5d1f888b1e060cf308e4ce36c0f"

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
