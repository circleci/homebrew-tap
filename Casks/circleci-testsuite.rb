cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.21339-ae152a7"
  sha256 arm: "f72cee802c106244705ac81bd04195fd9ce61c1c44b04aaeacae1d97ea59cf96",
         intel: "d9929b406796457d13f569b65bf3fa26a893fdf621b7d4eb72e2972a552be529"

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
