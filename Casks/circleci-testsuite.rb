cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.33722-b63f03a"
  sha256 arm: "e1b12090c4f41b884f920ebdc8e34c787586cc81663bcd022e0ef4f78b45ed98",
         intel: "0d2bdf76ab3a69bf3d2e573ad9a4a417ddd3f98cc0cb5525b65f9a33abe07943"

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
