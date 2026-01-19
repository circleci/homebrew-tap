cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.19060-ac7ec1d"
  sha256 arm: "57619258f152bff95b0d351c5b4aebc270db0bd14908e32f64251ad2647d76a3",
         intel: "a57bc1c95172f6fea40cfeefbf0d2db0103ce819662a83e20658085fe09ccb1a"

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
