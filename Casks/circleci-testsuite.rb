cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.22979-7dc8b82"
  sha256 arm: "319aff295b9e56581faa5d45aa4fd2dbf7a8b663b760caea14e29ae51385fb12",
         intel: "963a0e2ed3dece5bd2d95cf264ae49f60404dbe630c61ee8ad8edf7f2be1ecf1"

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
