cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.28549-ba94624"
  sha256 arm: "ca0817847f6b39546d5328b47d9733b32c78aeb5243eee28e471066e7f2f99ed",
         intel: "11b99d10300b9d77983504a185e5765c2bdc349c46b4b1aa0376e4da4d854834"

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
