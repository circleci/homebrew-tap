cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.29286-4afd752"
  sha256 arm: "3fb3a8d570f1d2e1f7558142ba8af847fa303485304022cf044880bbbcf54777",
         intel: "c7ff3e841f8aab3fb52785b4b66cacc05255eba26cff6ad1cc8dc6a45081964b"

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
