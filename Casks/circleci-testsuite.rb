cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.21625-478e92c"
  sha256 arm: "2cef996bcf3beec5b1b49b883f66306264272ba13a3ede52d91fb492d385ba08",
         intel: "7302d2535f78d6157fec5ad8b961f7204b5f88a84570733262c61a53fc2e1982"

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
