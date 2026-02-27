cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.23527-8c7e6dc"
  sha256 arm: "3cbe7a5b673e5720752c4497baae07c35f858164c3073f98b94aeb91761bd1fc",
         intel: "9ee660c0c9639b114d3844c85eadec2d5ac6e49ba6096f43c30b7294c250d48d"

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
