cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.17323-137bf53"
  sha256 arm: "669e8af707c453f604560c2f5bec66078d72a132f2bfa7b68f5d9348d80642a9",
         intel: "018c2c381d4d5b316cf90d6160654bcfd370d21304296638b63fc373c8d9236e"

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
