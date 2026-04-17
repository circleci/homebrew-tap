cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.31763-5690f55"
  sha256 arm: "976e7e43647a7f53a179b683f503d132eb80bc548efd1226e426b200d17fc2d8",
         intel: "cd59152ab0338b17e286539fb1aa5ce73dd9a9eade27e4b75e9065a3b4bc62a2"

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
