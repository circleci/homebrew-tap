cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.26720-161aa15"
  sha256 arm: "31b8577dd9e238eb66afb903e3ce2302768f376f8e3e6976ca00d0917abccc03",
         intel: "7ac4f4a0f823e8cf4b55791d635e92559cf5ddfa59fed2189395a3c9cf41e37f"

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
