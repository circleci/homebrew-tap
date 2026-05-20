cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.37335-ba6925c"
  sha256 arm: "0f6d05767b6bbb257458577ba846829561f9458ce66903e27d036dccfe3fbd0f",
         intel: "c1253e8a5c0dc98109669f61c4da171a4cf95057bdf76907de9112a7ff1bcef8"

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
