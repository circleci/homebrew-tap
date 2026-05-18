cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.36843-8289b8e"
  sha256 arm: "16eb5cc115eb5fd2ae2ccc517bf5ddcb61170063186a918757e31f116eaf3230",
         intel: "483843e9e411f0ada6433e8e6f8d88723fa6fee21ece2b59b5dbbcd2c941f231"

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
