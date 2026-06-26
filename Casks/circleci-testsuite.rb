cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.44172-2253fb6"
  sha256 arm: "63170c8e5e4f6b6bfe71968c622466d8c82a1fcf19b34b9cad193d8e737f95c0",
         intel: "8d9601e3734d62abbc83d9f6930eef76bc7e4301453d3dd62ab919d8bf0e7c5a"

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
