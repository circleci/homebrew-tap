cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.24970-695afe3"
  sha256 arm: "b542788acca79a354bcb071c3cf8e47c0897a274d59a8e05f5663d39f913e42d",
         intel: "4aca311049753c5bc5120f24c968bcffffe685dacd3cc577450534b89de0013a"

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
