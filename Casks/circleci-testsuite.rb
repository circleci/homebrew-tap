cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.22262-97879c6"
  sha256 arm: "6b5064d63f6d3cb409bd5ece79062e7f7bf66998cfd8f70406fddffcec563c9b",
         intel: "a8a517f8302bf8af18724a2f34020a4b7b734a425677111ae36dabf3ae43d1e7"

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
