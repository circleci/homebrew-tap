cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.47143-f80f134"
  sha256 arm: "fa251ae8d7dbe1bd9bfef558abf02c83bd681be2326076be8c52872c05dfe2f0",
         intel: "57b36579e810c527e16c921c445ed8f1060a907ba9b4514e5d1d27d046d5d786"

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
