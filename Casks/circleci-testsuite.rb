cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.27581-35baeee"
  sha256 arm: "a05cf29712859d94c935333c486107f485a361a55aac1e830b940313dc60f003",
         intel: "4ac933fa0a9f14287949237b54773d59fe60569e4bb72f0567717d047b5ec0ac"

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
