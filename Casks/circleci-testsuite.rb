cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.46717-34655a9"
  sha256 arm: "03e8eac9543fce0590b6de0a0d4ea17406dede0852c5f352a17f78580aaa6701",
         intel: "16df8a1ec2c9c4bb5f1270558542c78473bbfb509410a419f943827e373b68e7"

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
