cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.29866-d440b29"
  sha256 arm: "08a9d168b506c39de722bc63396a0dc3634ffbdb4f78e2a321ccac4be2f3e3f3",
         intel: "a5d29859fa22e58babb522b1aa415828d4e7375a45e5ddc124e3def093c25aa6"

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
