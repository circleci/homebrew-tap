cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.37132-9c9271e"
  sha256 arm: "07e3e170dcc6308941d561d3d69005200b213f004d181b97daa4d566c1731f50",
         intel: "fd549609649ccada668975332c50ef34b06678335396feb073d8f0a412dac817"

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
