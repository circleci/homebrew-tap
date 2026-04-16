cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.31626-7db5d1a"
  sha256 arm: "d0d1abe85ae38565778a30ce41022b7403c39567ed4ab4247e23cea68dfd2443",
         intel: "c57d8fbb8433c0a303c8887ec86ca88305aa843ef5bf42cc9836ea801aec8513"

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
