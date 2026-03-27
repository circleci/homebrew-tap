cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.29010-74130ff"
  sha256 arm: "9e437fced98781dbd9d8d2de9987e96368f0cb4d6376bc35929e343203542cbb",
         intel: "9be041ed31590dc4ccc5d2d20e94e669b575e11cef2481468e5215d47a82cd29"

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
