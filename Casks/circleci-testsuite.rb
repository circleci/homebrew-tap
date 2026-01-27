cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.19975-7c93b4d"
  sha256 arm: "ead792baa4e658a607af1db610c61dab9258f2d10c59c1a7f9047c0f53d3646c",
         intel: "10dcae4120ebea98c6c922df59a19e886d98c6176f49cf10262ddf65dd854e11"

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
