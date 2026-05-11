cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.35563-6f0ce0c"
  sha256 arm: "5462b4ff5979e30feed2dab0a444fa0a5882dc7b1c5e4a8ccdac244f81516926",
         intel: "b42786b237dd7a6b0d1249bd05a23810a9d34fa882640c703a5f26d0d1dfe81f"

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
