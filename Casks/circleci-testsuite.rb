cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.28914-2c5de01"
  sha256 arm: "ef38485e4db38dda200ecc00c93c4a729fbc5d61cce769c711f57755c358308e",
         intel: "432997c3bf2b67dd0968e63d4e0d99fb997fa20cddacb2ec458f149c7fd8249b"

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
