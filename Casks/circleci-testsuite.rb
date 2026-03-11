cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.25727-2dccabb"
  sha256 arm: "04428e0916bcbb49b803e231c3aae0c3005ceca524a870b7ebc7bb5460685d95",
         intel: "4228e48e47626f9f494efe9c1b8271e5971cb51a8d1a815a192f71c0eb664d1e"

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
