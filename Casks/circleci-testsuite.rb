cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.30763-77e94b2"
  sha256 arm: "03fbddf21c24aca2019390105e84599b8e857966d10a367cfdee45527c4c1779",
         intel: "d2436a5bbe89983c17b607db2fafdb0c1944f669e55afac4588b6e1a95a554e1"

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
