cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.38588-d577479"
  sha256 arm: "fba3453c539a75975f2a0e59fdc26ac5bd4ffad2c89f08f49c5230a61ce64564",
         intel: "9d7a773685bcaf70bbf2d5b05e6e44ddfa11c1d76a6f2be95d15420f45c54b76"

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
