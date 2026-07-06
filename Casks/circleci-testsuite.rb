cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.45378-3c11c96"
  sha256 arm: "3c5c0c3347904c10affd786d517ea362e45be86679e73e390e0db2804f0eaeef",
         intel: "1108526193fa0a3cdb451be1ccf99ccb1bd930ca0eec4104dd190a3a1023c355"

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
