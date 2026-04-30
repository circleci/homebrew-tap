cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.34052-f0c6701"
  sha256 arm: "40d99a366d9fb2a2d5b226952c73b62540b5f2925c3c204195418e4056b8fdad",
         intel: "76fad94004643251aebd62267dc8e2d3a08eb20ebad5a41e23c8d879294325fe"

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
