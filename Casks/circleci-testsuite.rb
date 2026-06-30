cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.44597-605f25c"
  sha256 arm: "a0fb884659f8e29c29f0c92dc43a2a1a8536431422ac593724a12613f892b7bb",
         intel: "32ce13017d7f103fac89560fb0cddb78deace55ebc4b3eb273cf849c0e4ca37d"

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
