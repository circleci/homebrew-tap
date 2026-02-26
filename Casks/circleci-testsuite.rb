cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.23389-f35b5e3"
  sha256 arm: "ebe5b6ac89c04610505ba358e0ef38bb3897b1d7fc037084b7bf7b9f97fd010c",
         intel: "3b061582faa74554cbdbdec3265aebe611eadfafac4385f3103fd178b40816f4"

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
