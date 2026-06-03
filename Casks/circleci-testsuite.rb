cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.39332-c0af7f2"
  sha256 arm: "02d90fa757ab9cafd0878792502174f5626e9023688f67b12db123b29ab92cf3",
         intel: "2e52388ce350af89fb4a063923acb267864bbf19fd74011f92db0623897734dc"

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
