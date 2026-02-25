cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.22872-696ffef"
  sha256 arm: "1413d91b25c471bb5650d7a496e617cac52e63c0ab197376d3a7a8f69981b8e4",
         intel: "f950bde88da83877ee00b7088c7066e7994b2a02090387b47a00abcc3272ce19"

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
