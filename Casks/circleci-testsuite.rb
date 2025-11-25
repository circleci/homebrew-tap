cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.14935-630104a"
  sha256 arm: "119efb069d5c3d9f0c2fd40b674ebf9a812dd8c2dbdf9fe17bf0514d52d10906",
         intel: "897f48bef23709d18834540f0a04ad23c081e84872d6fbdaa1066cdddc1b841e"

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
