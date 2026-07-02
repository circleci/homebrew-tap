cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.44898-3fc926b"
  sha256 arm: "409f23220f21425c05bbf0ef6ae10b86e2fc6f78a0f9c1fff8c9ea25325d90a4",
         intel: "7095ea4acf74ea9c70aa90f68639d95d425364934037871a79417bc8d05e5118"

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
