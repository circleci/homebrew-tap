cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.20337-51a4c69"
  sha256 arm: "57c0dad2060ad4239b3977e25cb42fa744e1474a947be23adbe2c84ce7787861",
         intel: "bd46c14103f6d15f285390ac5364abc96ffd10c358099f641cd9e98e9a0fbc73"

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
