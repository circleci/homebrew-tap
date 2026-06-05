cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.39897-0bb36a5"
  sha256 arm: "36a7bf54b8ba3404e83cc3bbd9bbfb90b27b079198fffc19ce435518a3abc652",
         intel: "eb174ff556a3349e8c2a43877706cd22419001276f6dc93db17946640f0b3cab"

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
