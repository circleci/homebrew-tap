cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.18901-dev-a232b3b"
  sha256 arm: "d509a1718334e5cb715a4575130c3ff2817726df46ff7707e526a30a011f24a0",
         intel: "28e8c1a8c122fa36929cef8e59bd6ef6f270d77487265d966a41acf1a37f2e87"

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
