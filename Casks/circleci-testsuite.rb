cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.29311-667be83"
  sha256 arm: "1fb9f6da15bc6af8e6c83768be6678c20371948a8771192bea1e879e6f2a7c9f",
         intel: "afb063aed1b97670f7156ad90abedb0b08216570f8916cd7d3fb89c7d767fe01"

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
