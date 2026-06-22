cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.43148-63147ab"
  sha256 arm: "487c6dd66632e5389523fa5cbe2b2a301d30d3511a8160ef23d263e72a12d06d",
         intel: "e10fa1a2d10a531e80370d27f6e003b6315d541330063f31ccc3a9e383ceaf74"

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
