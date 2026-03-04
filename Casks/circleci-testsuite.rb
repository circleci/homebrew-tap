cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.24202-6724114"
  sha256 arm: "012d8c973dfbeebd4e429055eab3750fee6d509c0a2fe042174908ef9755ce28",
         intel: "980cfdb37f9fbc7b93d1c8556c988a723333a069d45277ec883a3349ed064626"

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
