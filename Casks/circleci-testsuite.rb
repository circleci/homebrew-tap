cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.42040-ffa3e80"
  sha256 arm: "51822f00b173eb5c2703b5ea35ccf3a3e80b86f6770ee94efe8fdb9a101a52dc",
         intel: "d90a2f6fd8ee12ec81c8bd30a052bda11c558a1ed42abebd154821023fce3645"

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
