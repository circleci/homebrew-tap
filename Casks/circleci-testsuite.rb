cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.27365-9a27e66"
  sha256 arm: "5a2cadde3ece1e6a69af05bdcb60a0e3e2043bd1fc9dccfa237dc82278ce72d6",
         intel: "df5b390bd8d18becbbdbbe10af03e6862873c8c5bdd9cfa757480a1bd0784805"

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
