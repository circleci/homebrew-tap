cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.21970-0bdd84a"
  sha256 arm: "bc5f234c1b20cf0ccbcd156f4e15f9b7b7cbef97cde6135b63efd69b0610f377",
         intel: "d5fe656d7bfc208f4f942e07776d5cf2729b27cfc10db015611052b82a780fc9"

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
