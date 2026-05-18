cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.36876-72bfe2f"
  sha256 arm: "e139255af3f9ce2de01251165403951c41cb3543ee6d649e45d34274a0a7854f",
         intel: "bc39c8cc55a125567e4c078c4f0f79f1965b31fd2e2fc0c046f19c8b6a1dd24c"

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
