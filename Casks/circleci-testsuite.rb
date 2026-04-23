cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.32694-3733a5a"
  sha256 arm: "6b1a3a40268c6d12a31cfe3e026dc2c6aa80dbe493adb52b690a01a4d5eb3360",
         intel: "6e8cc010a22f4b4362dd3e563929040352b8fd6c4e979821a164beb4fcef5978"

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
