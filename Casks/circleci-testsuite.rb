cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.31733-acd837f"
  sha256 arm: "4f0a458e8f301ca8e3e3fdbc08316e516c747973c4e544bd3c4303ee86b7ca47",
         intel: "4a8db0e37436c8577d33b65c6eb4b76360f9383f4b90b2d43961ffe0befb0985"

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
