cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.31123-6f0a497"
  sha256 arm: "d405f58012f6d3d83c8d5c5e3e461a7acb191d5b94992f49423de590cbef7b0b",
         intel: "1dc9afa7bd13cdcd9e603505064c36887b95dc567b8e47e45798b4619de97093"

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
