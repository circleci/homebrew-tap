cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.19827-4fa3847"
  sha256 arm: "1458e6cfc49944e8b691cead1f65ccd42bf0f04d0801b18bdd5334c8616cd8a8",
         intel: "7ebd7884d4bd561292d4060da838a50c9943da7e6f0c63d7731c131d040fccbf"

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
