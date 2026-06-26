cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.44114-4a14d5d"
  sha256 arm: "3b23ff86ad59f8ea5c51b2df10dac9ed9a95503ca66a57c2a12831fb218a4c19",
         intel: "716718f10b8cd737924f98266cef5c768975381aa5305facc1ccde6ea41e101e"

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
