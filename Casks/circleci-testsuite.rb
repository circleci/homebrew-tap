cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.20750-bfd845a"
  sha256 arm: "25b335d58dca7b6eaa45dc1bb37a769ca7dbca203d240fd90b9c5a684d248fa7",
         intel: "44027268e56eb22d1ad8c184a318c87993be4f97e77dddbdc7ab11c1fbd4cb03"

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
