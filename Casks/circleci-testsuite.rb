cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.22651-57434e1"
  sha256 arm: "a9ce5f9b83fec699bf05d188f57503c934a0ac0643792c9493f025be6213be51",
         intel: "31f21023b34c62d53a1408e7d7c7bc11feb203ec473d65cf1c8e814c5a88379e"

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
