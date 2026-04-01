cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.29894-a29a234"
  sha256 arm: "a122ec8eeecf9bf4ee7bdbd828016ec716ba0913b8f4ba894dbf0d16f487193d",
         intel: "308570245da4f73e33c074f28662781e3e7335c906059b5975e1fafa62dfef4d"

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
