cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.38409-8189218"
  sha256 arm: "eea450f513919fc1cba6b2bcc7b407452746901371edc11ed4fe61e154fe6991",
         intel: "f43ac2796f5c25446c6c96e0a52c92725483596ac6f0134fab9c3436cbba5d2a"

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
