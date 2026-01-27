cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.20034-3573268"
  sha256 arm: "c18c87eaa9c98f8774872d46c18319520270b36a22d1ce24d900de870f257164",
         intel: "96b8a92a4dfea6db9e684a260e033d1d6830b3bfebea1a417cc183f9e05e0d90"

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
