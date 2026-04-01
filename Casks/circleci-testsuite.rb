cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.29941-511b862"
  sha256 arm: "0d34e70261c63906b0289ab30271293a3cb43f0d3eb4fc8a8700c22c2897aa94",
         intel: "d71e3b87e1173cb60ce397d115d9fa0040b2531ac3f9a18dc532e9d40f59426b"

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
