cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.29369-906ea92"
  sha256 arm: "8509673aa103781234be0eb1672b6234136f20f25063960ccd6fe7a6698f1885",
         intel: "e5bd454729d605709f06c6fafe5ce635c566edb9e98a850c9c484583bc96413f"

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
