cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.14417-9f18787"
  sha256 arm: "f0683057e7b4dca0f0befcc168f690102bfbf3a632cce2bb623fceb42d656582",
         intel: "156433f4670acb13394ab33cf5111d0f1b450ad3a96a2b2c7f9de7d179686337"

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
