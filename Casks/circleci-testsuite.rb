cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.37600-a3d075e"
  sha256 arm: "dc99ee7af8ef95556b372ffe35956117f9165659e541e81abd8536cbb781264d",
         intel: "a405b029c2ddba8adaa356496e917ae175867786a522b01e4c693808d1f30112"

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
