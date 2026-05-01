cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.34667-27d7c9a"
  sha256 arm: "f2eb771a3de4041a38b23f7f05739c76bef969518b0ab3341d36e2ebefb7d5c5",
         intel: "6e552bcc434cde2aa7e9b12300e3c5c153be1b107bef4f270be5eb571df1ff57"

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
