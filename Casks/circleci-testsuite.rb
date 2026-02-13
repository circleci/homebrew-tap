cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.21490-dc62667"
  sha256 arm: "3a4b5b26480148fdb5e19099add81ae9a29e01a8f8d0b2136eba40db2e48e8c5",
         intel: "98958c43372719dd8aeeb0f32a76061ae3078dbdbb7ad44e0bcfc4a4d50ec4f6"

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
