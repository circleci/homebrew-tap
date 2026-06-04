cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.39687-f03fa4a"
  sha256 arm: "bfafafaef7f25ca38e9ba1246b647c63281c1d9749db8ff4bf0bd68e67b9c3f0",
         intel: "3e0d02b34f93ab6fc617293c22c22eb7b666b2645b8c7c225429e37373ffeac4"

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
