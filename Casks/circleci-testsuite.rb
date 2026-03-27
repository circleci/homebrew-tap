cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.29157-ec07b8f"
  sha256 arm: "26980566d7d5b434c3fcba5a9158004de90b592ef86782880d0bd888ceaba792",
         intel: "02d8f16d6b095008c1d3edaba8c8c6a7a53897b7d16d95145495f22778f8d1ef"

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
